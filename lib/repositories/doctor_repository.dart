import 'package:kliniku_server_client/kliniku_server_client.dart';

/// Repository for handling Doctor-related operations.
/// Note: This repository is prepared for when the server endpoints are implemented.
/// Currently uses direct client calls which should be replaced with actual endpoint calls.
class DoctorRepository {
  final Client _client;

  DoctorRepository(this._client);

  /// Gets all doctors from the server.
  Future<List<Doctor>> getAllDoctors() async {
    try {
      return await _client.doctor.getAll();
    } catch (e) {
      throw Exception('Failed to get doctors: $e');
    }
  }

  /// Gets a doctor by their ID.
  Future<Doctor?> getById(int id) async {
    try {
      return await _client.doctor.getById(id);
    } catch (e) {
      throw Exception('Failed to get doctor: $e');
    }
  }

  /// Gets all doctors in a specific poli.
  Future<List<Doctor>> getByPoliId(int poliId) async {
    try {
      return await _client.doctor.getByPoliId(poliId);
    } catch (e) {
      throw Exception('Failed to get doctors by poli: $e');
    }
  }

  /// Gets all doctors with a specific specialization.
  Future<List<Doctor>> getBySpecializationId(int specializationId) async {
    try {
      return await _client.doctor.getBySpecializationId(specializationId);
    } catch (e) {
      throw Exception('Failed to get doctors by specialization: $e');
    }
  }

  /// Searches doctors by name.
  Future<List<Doctor>> searchByName(String query) async {
    try {
      return await _client.doctor.searchByName(query);
    } catch (e) {
      throw Exception('Failed to search doctors: $e');
    }
  }

  /// Gets available doctors (with active status).
  Future<List<Doctor>> getAvailableDoctors() async {
    try {
      return await _client.doctor.getAvailable();
    } catch (e) {
      throw Exception('Failed to get available doctors: $e');
    }
  }

  // Client getter for future endpoint implementation
  Client get client => _client;
}
