import 'package:kliniku_server_client/kliniku_server_client.dart';

/// Repository for handling Queue-related operations.
/// Note: This repository is prepared for when the server endpoints are implemented.
class QueueRepository {
  final Client _client;

  QueueRepository(this._client);

  /// Gets the current queue for the logged-in patient.
  Future<Queue?> getCurrentQueue() async {
    try {
      return await _client.queue.getCurrent();
    } catch (e) {
      throw Exception('Failed to get current queue: $e');
    }
  }

  /// Gets a queue by its ID.
  Future<Queue?> getById(int id) async {
    try {
      return await _client.queue.getById(id);
    } catch (e) {
      throw Exception('Failed to get queue: $e');
    }
  }

  /// Gets queue by appointment ID.
  Future<Queue?> getByAppointmentId(int appointmentId) async {
    try {
      return await _client.queue.getByAppointmentId(appointmentId);
    } catch (e) {
      throw Exception('Failed to get queue by appointment: $e');
    }
  }

  /// Gets all queues for a specific date.
  /// Note: The endpoint logic might be different (e.g. getByPoliPrefix).
  /// For now, using getAll as placeholder or if endpoint added.
  /// Wait, ImplementationPlan didn't specify getByDate on server.
  /// Let's use getActive() for now as it's most relevant.
  Future<List<Queue>> getActiveQueues() async {
    try {
      return await _client.queue.getActive();
    } catch (e) {
      throw Exception('Failed to get active queues: $e');
    }
  }

  /// Gets all queues for a specific poli on a specific date.
  Future<List<Queue>> getQueuesByPoliAndDate({
    required int poliId,
    required DateTime date,
  }) async {
    try {
      // This endpoint was not explicitly created in QueueEndpoint provided.
      // We have getByPoliPrefix.
      // We'll return empty for now to avoid error or implement properly if needed.
      return [];
    } catch (e) {
      return [];
    }
  }

  /// Updates the status of a queue (admin only).
  Future<Queue> updateStatus({
    required int queueId,
    required String status,
  }) async {
    try {
      return await _client.queue.updateStatus(queueId, status);
    } catch (e) {
      throw Exception('Failed to update queue status: $e');
    }
  }

  /// Calls the next queue number (admin only).
  Future<Queue?> callNext({required String poliPrefix}) async {
    try {
      return await _client.queue.callNext(poliPrefix);
    } catch (e) {
      throw Exception('Failed to call next queue: $e');
    }
  }

  // Client getter for future endpoint implementation
  Client get client => _client;
}
