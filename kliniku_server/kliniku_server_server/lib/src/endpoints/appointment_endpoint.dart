import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class AppointmentEndpoint extends Endpoint {
  // ==================== CUSTOMER BOOKING ====================

  /// Check slot availability
  Future<List<String>> checkSlotAvailability(
    Session session, {
    required int doctorId,
    required DateTime date,
  }) async {
    // Placeholder logic - in real impl, query DoctorSchedule and existing Appointments
    return ['08:00', '08:15', '09:00', '10:30'];
  }

  /// Book appointment
  Future<Appointment> bookAppointment(
    Session session, {
    required int doctorId,
    required int poliId,
    required DateTime appointmentDate,
    required String timeSlot,
    required String type, // 'online_booking', 'teleconsult'
    String? notes,
  }) async {
    // Retrieve current user (patient)
    // For now, assuming calling logic passes necessary data or we mock it
    // In real auth, session.auth.authenticatedUserId

    // Placeholder booking logic
    final appointment = Appointment(
      patientId: 1, // Mock patient ID
      doctorId: doctorId,
      poliId: poliId,
      appointmentDate: appointmentDate,
      timeSlot: timeSlot,
      type: type,
      status: 'pending',
      totalFee: 50000,
      paymentStatus: 'unpaid',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    // Insert into DB
    await Appointment.db.insertRow(session, appointment);

    return appointment;
  }

  /// Cancel appointment
  Future<bool> cancelAppointment(
    Session session,
    int appointmentId, {
    required String reason,
  }) async {
    final appointment = await Appointment.db.findById(session, appointmentId);
    if (appointment != null) {
      final updated = appointment.copyWith(
        status: 'cancelled',
        cancellationReason: reason,
      );
      await Appointment.db.updateRow(session, updated);
      return true;
    }
    return false;
  }

  /// Get appointment details
  Future<Appointment?> getAppointmentDetail(
    Session session,
    int appointmentId,
  ) async {
    return await Appointment.db.findById(session, appointmentId);
  }

  // ==================== ADMIN OPERATIONS ====================

  /// Get all appointments for a date
  Future<List<Appointment>> getAppointmentsByDate(
    Session session, {
    required DateTime date,
    int? doctorId,
    int? poliId,
    String? status,
  }) async {
    // Using simple find for now
    return await Appointment.db.find(
      session,
      where: (t) => t.appointmentDate.equals(date),
    );
  }
}
