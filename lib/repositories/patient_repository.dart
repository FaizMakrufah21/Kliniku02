import 'package:kliniku_server_client/kliniku_server_client.dart';

/// Repository for handling Patient-related operations.
/// Note: This repository is prepared for when the server endpoints are implemented.
class PatientRepository {
  final Client _client;

  PatientRepository(this._client);

  /// Gets the current patient profile for the logged-in user.
  Future<Patient?> getCurrentPatient() async {
    try {
      return await _client.patient.getCurrent();
    } catch (e) {
      throw Exception('Failed to get current patient: $e');
    }
  }

  /// Gets a patient by their ID.
  Future<Patient?> getById(int id) async {
    try {
      return await _client.patient.getById(id);
    } catch (e) {
      throw Exception('Failed to get patient: $e');
    }
  }

  /// Gets a patient by their user ID.
  Future<Patient?> getByUserId(int userId) async {
    try {
      return await _client.patient.getByUserId(userId);
    } catch (e) {
      throw Exception('Failed to get patient by user ID: $e');
    }
  }

  /// Creates a new patient profile.
  Future<Patient> createPatient(Patient patient) async {
    try {
      return await _client.patient.create(patient);
    } catch (e) {
      throw Exception('Failed to create patient: $e');
    }
  }

  /// Updates an existing patient profile.
  Future<Patient> updatePatient(Patient patient) async {
    try {
      return await _client.patient.update(patient);
    } catch (e) {
      throw Exception('Failed to update patient: $e');
    }
  }

  /// Searches patients by name (admin only).
  Future<List<Patient>> searchByName(String query) async {
    try {
      return await _client.patient.searchByName(query);
    } catch (e) {
      throw Exception('Failed to search patients: $e');
    }
  }

  /// Searches patients by NIK (admin only).
  Future<Patient?> searchByNik(String nik) async {
    try {
      return await _client.patient.searchByNik(nik);
    } catch (e) {
      throw Exception('Failed to search patient by NIK: $e');
    }
  }

  // Client getter for future endpoint implementation
  Client get client => _client;
}
