import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

/// Endpoint for managing Patient data with full CRUD operations.
class PatientEndpoint extends Endpoint {
  // ==================== READ OPERATIONS ====================

  /// Get current patient profile for the logged-in user.
  /// Uses session.auth to get authenticated user ID.
  Future<Patient?> getCurrent(Session session) async {
    // FIXME: session.auth.authenticatedUserId failing info
    // final userId = await session.auth.authenticatedUserId;
    final userId = 1;

    final patients = await Patient.db.find(
      session,
      where: (t) => t.userId.equals(userId),
    );
    return patients.isEmpty ? null : patients.first;
  }

  /// Get all patients (Admin only)
  Future<List<Patient>> getAll(Session session) async {
    return await Patient.db.find(session);
  }

  /// Get patient by ID
  Future<Patient?> getById(Session session, int id) async {
    return await Patient.db.findById(session, id);
  }

  /// Get patient by user ID
  Future<Patient?> getByUserId(Session session, int userId) async {
    final patients = await Patient.db.find(
      session,
      where: (t) => t.userId.equals(userId),
    );
    return patients.isEmpty ? null : patients.first;
  }

  /// Search patients by name (Admin only)
  Future<List<Patient>> searchByName(Session session, String query) async {
    return await Patient.db.find(
      session,
      where: (t) => t.name.ilike('%$query%'),
    );
  }

  /// Search patient by NIK (Admin only)
  Future<Patient?> searchByNik(Session session, String nik) async {
    final patients = await Patient.db.find(
      session,
      where: (t) => t.nik.equals(nik),
    );
    return patients.isEmpty ? null : patients.first;
  }

  /// Get active patients
  Future<List<Patient>> getActive(Session session) async {
    return await Patient.db.find(
      session,
      where: (t) => t.status.equals('active'),
    );
  }

  // ==================== CREATE OPERATION ====================

  /// Create a new patient profile
  Future<Patient> create(Session session, Patient patient) async {
    // Check if patient with NIK already exists
    final existing = await searchByNik(session, patient.nik);
    if (existing != null) {
      throw Exception('Pasien dengan NIK ${patient.nik} sudah terdaftar');
    }

    final newPatient = patient.copyWith(
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      status: 'active',
    );
    return await Patient.db.insertRow(session, newPatient);
  }

  /// Create patient profile for current logged-in user
  Future<Patient> createForCurrentUser(Session session, Patient patient) async {
    // final userId = await session.auth.authenticatedUserId;
    final userId = 1; // FIXME

    // Check if user already has a patient profile
    final existingPatient = await getByUserId(session, userId);
    if (existingPatient != null) {
      throw Exception('User sudah memiliki profil pasien');
    }

    final newPatient = patient.copyWith(
      userId: userId,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      status: 'active',
    );
    return await Patient.db.insertRow(session, newPatient);
  }

  // ==================== UPDATE OPERATION ====================

  /// Update an existing patient
  Future<Patient> update(Session session, Patient patient) async {
    final existing = await Patient.db.findById(session, patient.id!);
    if (existing == null) {
      throw Exception('Pasien dengan ID ${patient.id} tidak ditemukan');
    }

    final updatedPatient = patient.copyWith(
      updatedAt: DateTime.now(),
    );
    return await Patient.db.updateRow(session, updatedPatient);
  }

  /// Update current patient profile
  Future<Patient> updateCurrent(Session session, Patient patient) async {
    final current = await getCurrent(session);
    if (current == null) {
      throw Exception('Profil pasien tidak ditemukan');
    }

    final updatedPatient = patient.copyWith(
      id: current.id,
      userId: current.userId,
      updatedAt: DateTime.now(),
    );
    return await Patient.db.updateRow(session, updatedPatient);
  }

  // ==================== DELETE OPERATION ====================

  /// Delete a patient by ID (Admin only)
  Future<bool> delete(Session session, int id) async {
    final existing = await Patient.db.findById(session, id);
    if (existing == null) {
      return false;
    }
    await Patient.db.deleteRow(session, existing);
    return true;
  }

  /// Soft delete - set patient as inactive
  Future<bool> deactivate(Session session, int id) async {
    final existing = await Patient.db.findById(session, id);
    if (existing == null) {
      return false;
    }

    final deactivated = existing.copyWith(
      status: 'inactive',
      updatedAt: DateTime.now(),
    );
    await Patient.db.updateRow(session, deactivated);
    return true;
  }
}
