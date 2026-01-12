import 'package:kliniku_server_client/kliniku_server_client.dart';

/// Repository for handling appointment-related operations.
/// NOTE: The Appointment endpoint is not yet implemented on the server.
/// These methods are placeholders that will throw errors until the
/// server endpoints are created.
class AppointmentRepository {
  final Client _client;

  AppointmentRepository(this._client);

  /// Gets appointments for a specific date.
  /// TODO: Implement when server endpoint is available
  Future<List<Appointment>> getAppointmentsByDate(DateTime date) async {
    // Placeholder - server endpoint not yet implemented
    throw UnimplementedError(
      'Appointment endpoint not implemented on server. '
      'Create the endpoint in kliniku_server first.',
    );
  }

  /// Gets a single appointment by ID.
  /// TODO: Implement when server endpoint is available
  Future<Appointment?> getAppointmentById(int id) async {
    throw UnimplementedError('Appointment endpoint not implemented on server.');
  }

  /// Creates a new appointment.
  /// TODO: Implement when server endpoint is available
  Future<Appointment> createAppointment(Appointment appointment) async {
    throw UnimplementedError('Appointment endpoint not implemented on server.');
  }

  /// Updates an existing appointment.
  /// TODO: Implement when server endpoint is available
  Future<Appointment> updateAppointment(Appointment appointment) async {
    throw UnimplementedError('Appointment endpoint not implemented on server.');
  }

  /// Deletes an appointment.
  /// TODO: Implement when server endpoint is available
  Future<bool> deleteAppointment(int id) async {
    throw UnimplementedError('Appointment endpoint not implemented on server.');
  }

  // Suppress unused field warning - will be used when endpoints are implemented
  Client get client => _client;
}
