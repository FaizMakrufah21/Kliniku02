import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

/// Endpoint for managing Queue data with full CRUD operations.
class QueueEndpoint extends Endpoint {
  // ==================== READ OPERATIONS ====================

  /// Get current queue for logged-in user's active appointment
  Future<Queue?> getCurrent(Session session) async {
    // final userId = await session.auth.authenticatedUserId;
    final userId = 1; // FIXME

    // Get patient for this user first
    final patients = await Patient.db.find(
      session,
      where: (t) => t.userId.equals(userId),
    );
    if (patients.isEmpty) return null;

    // Get active appointments for this patient
    final appointments = await Appointment.db.find(
      session,
      where: (t) =>
          t.patientId.equals(patients.first.id!) &
          (t.status.equals('pending') | t.status.equals('confirmed')),
    );
    if (appointments.isEmpty) return null;

    // Get queue for the appointment
    final queues = await Queue.db.find(
      session,
      where: (t) =>
          t.appointmentId.equals(appointments.first.id!) &
          (t.status.equals('waiting') | t.status.equals('called')),
    );
    return queues.isEmpty ? null : queues.first;
  }

  /// Get all queues
  Future<List<Queue>> getAll(Session session) async {
    return await Queue.db.find(session);
  }

  /// Get queue by ID
  Future<Queue?> getById(Session session, int id) async {
    return await Queue.db.findById(session, id);
  }

  /// Get queue by appointment ID
  Future<Queue?> getByAppointmentId(Session session, int appointmentId) async {
    final queues = await Queue.db.find(
      session,
      where: (t) => t.appointmentId.equals(appointmentId),
    );
    return queues.isEmpty ? null : queues.first;
  }

  /// Get active queues (waiting, called, or serving)
  Future<List<Queue>> getActive(Session session) async {
    return await Queue.db.find(
      session,
      where: (t) =>
          t.status.equals('waiting') |
          t.status.equals('called') |
          t.status.equals('serving'),
    );
  }

  /// Get queues by poli prefix (e.g., "A" for Umum, "B" for Gigi)
  Future<List<Queue>> getByPoliPrefix(Session session, String prefix) async {
    return await Queue.db.find(
      session,
      where: (t) => t.queuePrefix.equals(prefix),
      orderBy: (t) => t.queueSequence,
    );
  }

  /// Get active queues by poli prefix
  Future<List<Queue>> getActiveByPoliPrefix(
    Session session,
    String prefix,
  ) async {
    return await Queue.db.find(
      session,
      where: (t) =>
          t.queuePrefix.equals(prefix) &
          (t.status.equals('waiting') | t.status.equals('called')),
      orderBy: (t) => t.queueSequence,
    );
  }

  // ==================== CREATE OPERATION ====================

  /// Create a new queue entry for an appointment
  Future<Queue> create(Session session, Queue queue) async {
    // Check if queue already exists for this appointment
    final existing = await getByAppointmentId(session, queue.appointmentId);
    if (existing != null) {
      throw Exception('Antrian untuk appointment ini sudah ada');
    }

    // Get the next queue sequence number for this prefix
    final todayQueues = await getByPoliPrefix(session, queue.queuePrefix);
    final nextSequence = todayQueues.isEmpty
        ? 1
        : todayQueues
                  .map((q) => q.queueSequence)
                  .reduce((a, b) => a > b ? a : b) +
              1;

    final newQueue = queue.copyWith(
      queueSequence: nextSequence,
      queueNumber:
          '${queue.queuePrefix}${nextSequence.toString().padLeft(3, '0')}',
      status: 'waiting',
    );

    return await Queue.db.insertRow(session, newQueue);
  }

  /// Create queue automatically when appointment is confirmed
  Future<Queue> createForAppointment(
    Session session, {
    required int appointmentId,
    required String queuePrefix,
  }) async {
    // Check if queue already exists
    final existing = await getByAppointmentId(session, appointmentId);
    if (existing != null) {
      return existing;
    }

    // Get the next sequence
    final todayQueues = await getByPoliPrefix(session, queuePrefix);
    final nextSequence = todayQueues.isEmpty
        ? 1
        : todayQueues
                  .map((q) => q.queueSequence)
                  .reduce((a, b) => a > b ? a : b) +
              1;

    final queue = Queue(
      appointmentId: appointmentId,
      queuePrefix: queuePrefix,
      queueSequence: nextSequence,
      queueNumber: '$queuePrefix${nextSequence.toString().padLeft(3, '0')}',
      status: 'waiting',
    );

    return await Queue.db.insertRow(session, queue);
  }

  // ==================== UPDATE OPERATION ====================

  /// Update a queue entry
  Future<Queue> update(Session session, Queue queue) async {
    final existing = await Queue.db.findById(session, queue.id!);
    if (existing == null) {
      throw Exception('Antrian dengan ID ${queue.id} tidak ditemukan');
    }
    return await Queue.db.updateRow(session, queue);
  }

  /// Update queue status
  Future<Queue> updateStatus(
    Session session,
    int queueId,
    String status,
  ) async {
    final existing = await Queue.db.findById(session, queueId);
    if (existing == null) {
      throw Exception('Antrian dengan ID $queueId tidak ditemukan');
    }

    DateTime? calledAt = existing.calledAt;
    DateTime? servedAt = existing.servedAt;
    DateTime? completedAt = existing.completedAt;

    // Update timestamps based on status
    if (status == 'called' && calledAt == null) {
      calledAt = DateTime.now();
    } else if (status == 'serving' && servedAt == null) {
      servedAt = DateTime.now();
    } else if (status == 'done' || status == 'skipped') {
      completedAt = DateTime.now();
    }

    final updated = existing.copyWith(
      status: status,
      calledAt: calledAt,
      servedAt: servedAt,
      completedAt: completedAt,
    );
    return await Queue.db.updateRow(session, updated);
  }

  /// Call next queue in a specific poli (Admin operation)
  Future<Queue?> callNext(Session session, String queuePrefix) async {
    // Find the next waiting queue
    final waitingQueues = await Queue.db.find(
      session,
      where: (t) =>
          t.queuePrefix.equals(queuePrefix) & t.status.equals('waiting'),
      orderBy: (t) => t.queueSequence,
      limit: 1,
    );

    if (waitingQueues.isEmpty) {
      return null; // No more waiting queues
    }

    final nextQueue = waitingQueues.first;
    return await updateStatus(session, nextQueue.id!, 'called');
  }

  // ==================== DELETE OPERATION ====================

  /// Delete a queue entry by ID
  Future<bool> delete(Session session, int id) async {
    final existing = await Queue.db.findById(session, id);
    if (existing == null) {
      return false;
    }
    await Queue.db.deleteRow(session, existing);
    return true;
  }

  /// Skip a queue (mark as skipped instead of deleting)
  Future<bool> skip(Session session, int queueId) async {
    try {
      await updateStatus(session, queueId, 'skipped');
      return true;
    } catch (e) {
      return false;
    }
  }
}
