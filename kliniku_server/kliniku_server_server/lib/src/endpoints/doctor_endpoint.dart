import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

/// Endpoint for managing Doctor data with full CRUD operations.
class DoctorEndpoint extends Endpoint {
  // ==================== READ OPERATIONS ====================

  /// Get all doctors
  Future<List<Doctor>> getAll(Session session) async {
    return await Doctor.db.find(session);
  }

  /// Get doctor by ID
  Future<Doctor?> getById(Session session, int id) async {
    return await Doctor.db.findById(session, id);
  }

  /// Get all doctors in a specific poli
  Future<List<Doctor>> getByPoliId(Session session, int poliId) async {
    return await Doctor.db.find(
      session,
      where: (t) => t.poliId.equals(poliId),
    );
  }

  /// Get all doctors with a specific specialization
  Future<List<Doctor>> getBySpecializationId(
    Session session,
    int specializationId,
  ) async {
    return await Doctor.db.find(
      session,
      where: (t) => t.specializationId.equals(specializationId),
    );
  }

  /// Search doctors by name
  Future<List<Doctor>> searchByName(Session session, String query) async {
    return await Doctor.db.find(
      session,
      where: (t) => t.name.ilike('%$query%'),
    );
  }

  /// Get all available (active) doctors
  Future<List<Doctor>> getAvailable(Session session) async {
    return await Doctor.db.find(
      session,
      where: (t) => t.status.equals('active'),
    );
  }

  /// Get available doctors in a specific poli
  Future<List<Doctor>> getAvailableByPoliId(Session session, int poliId) async {
    return await Doctor.db.find(
      session,
      where: (t) => t.poliId.equals(poliId) & t.status.equals('active'),
    );
  }

  // ==================== CREATE OPERATION ====================

  /// Create a new doctor
  Future<Doctor> create(Session session, Doctor doctor) async {
    // Set timestamps
    final newDoctor = doctor.copyWith(
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    return await Doctor.db.insertRow(session, newDoctor);
  }

  // ==================== UPDATE OPERATION ====================

  /// Update an existing doctor
  Future<Doctor> update(Session session, Doctor doctor) async {
    final existing = await Doctor.db.findById(session, doctor.id!);
    if (existing == null) {
      throw Exception('Dokter dengan ID ${doctor.id} tidak ditemukan');
    }

    final updatedDoctor = doctor.copyWith(
      updatedAt: DateTime.now(),
    );
    return await Doctor.db.updateRow(session, updatedDoctor);
  }

  /// Update doctor status
  Future<Doctor> updateStatus(
    Session session,
    int doctorId,
    String status,
  ) async {
    final existing = await Doctor.db.findById(session, doctorId);
    if (existing == null) {
      throw Exception('Dokter dengan ID $doctorId tidak ditemukan');
    }

    final updated = existing.copyWith(
      status: status,
      updatedAt: DateTime.now(),
    );
    return await Doctor.db.updateRow(session, updated);
  }

  // ==================== DELETE OPERATION ====================

  /// Delete a doctor by ID
  Future<bool> delete(Session session, int id) async {
    final existing = await Doctor.db.findById(session, id);
    if (existing == null) {
      return false;
    }
    await Doctor.db.deleteRow(session, existing);
    return true;
  }

  /// Soft delete - set doctor as inactive
  Future<bool> deactivate(Session session, int id) async {
    final existing = await Doctor.db.findById(session, id);
    if (existing == null) {
      return false;
    }

    final deactivated = existing.copyWith(
      status: 'inactive',
      updatedAt: DateTime.now(),
    );
    await Doctor.db.updateRow(session, deactivated);
    return true;
  }
}
