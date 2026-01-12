import 'package:kliniku_server_client/kliniku_server_client.dart';

/// Repository for handling appointment-related operations.
/// NOTE: The Appointment endpoint is not yet implemented on the server.
/// These methods are placeholders that will throw errors until the
/// server endpoints are created.
class AppointmentRepository {
  final Client _client;

  AppointmentRepository(this._client);

  /// Gets appointments for a specific date.
  Future<List<Appointment>> getAppointmentsByDate(DateTime date) async {
    return await _client.appointment.getAppointmentsByDate(date: date);
  }

  /// Gets a single appointment by ID.
  Future<Appointment?> getAppointmentById(int id) async {
    return await _client.appointment.getAppointmentDetail(id);
  }

  /// Creates a new appointment.
  Future<Appointment> createAppointment(Appointment appointment) async {
    // We use bookAppointment endpoint which takes individual parameters
    // We assume appointment object has these fields populated
    return await _client.appointment.bookAppointment(
      doctorId: appointment.doctorId,
      poliId: appointment.poliId,
      appointmentDate: appointment.appointmentDate,
      timeSlot: appointment.timeSlot, // assuming not null for creation
      type: appointment.type,
      notes: appointment.notes,
    );
  }

  /// Updates an existing appointment.
  Future<Appointment> updateAppointment(Appointment appointment) async {
    // Current endpoint only supports cancellation via cancelAppointment
    // For full update, we might need a new endpoint method.
    // implementing cancel if status is cancelled?
    if (appointment.status == 'cancelled') {
      final success = await _client.appointment.cancelAppointment(
        appointment.id!,
        reason: appointment.cancellationReason ?? 'No reason',
      );
      if (success) return appointment;
    }

    throw UnimplementedError(
      'Full update not supported yet, only cancellation via specific method',
    );
  }

  /// Deletes an appointment.
  Future<bool> deleteAppointment(int id) async {
    // Not exposed in endpoint yet
    throw UnimplementedError(
      'Delete appointment not implemented on server yet',
    );
  }

  // Suppress unused field warning - will be used when endpoints are implemented
  Client get client => _client;
}
