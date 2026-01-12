import 'package:kliniku_server_client/kliniku_server_client.dart';

/// Repository for handling Doctor-related operations.
/// Note: This repository is prepared for when the server endpoints are implemented.
/// Currently uses direct client calls which should be replaced with actual endpoint calls.
class DoctorRepository {
  final Client _client;

  DoctorRepository(this._client);

  /// Gets all doctors from the server.
  /// TODO: Replace with actual endpoint call when server implements doctor endpoints
  Future<List<Doctor>> getAllDoctors() async {
    try {
      // This will need to be replaced with the actual endpoint call
      // Example: return await _client.doctor.getAll();
      throw UnimplementedError(
        'Doctor.getAll endpoint not yet implemented on server',
      );
    } catch (e) {
      throw Exception('Failed to get doctors: $e');
    }
  }

  /// Gets a doctor by their ID.
  Future<Doctor> getById(int id) async {
    try {
      // Example: return await _client.doctor.getById(id: id);
      throw UnimplementedError(
        'Doctor.getById endpoint not yet implemented on server',
      );
    } catch (e) {
      throw Exception('Failed to get doctor: $e');
    }
  }

  /// Gets all doctors in a specific poli.
  Future<List<Doctor>> getByPoliId(int poliId) async {
    try {
      // Example: return await _client.doctor.getByPoliId(poliId: poliId);
      throw UnimplementedError(
        'Doctor.getByPoliId endpoint not yet implemented on server',
      );
    } catch (e) {
      throw Exception('Failed to get doctors by poli: $e');
    }
  }

  /// Gets all doctors with a specific specialization.
  Future<List<Doctor>> getBySpecializationId(int specializationId) async {
    try {
      // Example: return await _client.doctor.getBySpecializationId(specializationId: specializationId);
      throw UnimplementedError(
        'Doctor.getBySpecializationId endpoint not yet implemented on server',
      );
    } catch (e) {
      throw Exception('Failed to get doctors by specialization: $e');
    }
  }

  /// Searches doctors by name.
  Future<List<Doctor>> searchByName(String query) async {
    try {
      // Example: return await _client.doctor.searchByName(query: query);
      throw UnimplementedError(
        'Doctor.searchByName endpoint not yet implemented on server',
      );
    } catch (e) {
      throw Exception('Failed to search doctors: $e');
    }
  }

  /// Gets available doctors (with active status).
  Future<List<Doctor>> getAvailableDoctors() async {
    try {
      // Example: return await _client.doctor.getAvailable();
      throw UnimplementedError(
        'Doctor.getAvailable endpoint not yet implemented on server',
      );
    } catch (e) {
      throw Exception('Failed to get available doctors: $e');
    }
  }

  // Client getter for future endpoint implementation
  Client get client => _client;
}
