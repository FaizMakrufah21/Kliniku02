import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kliniku_server_client/kliniku_server_client.dart';
import '../repositories/appointment_repository.dart';
import '../main.dart'; // import client

part 'appointment_provider.g.dart';

@riverpod
AppointmentRepository appointmentRepository(Ref ref) {
  return AppointmentRepository(client);
}

@riverpod
Future<List<Appointment>> appointmentList(Ref ref, DateTime date) async {
  final repository = ref.watch(appointmentRepositoryProvider);
  return repository.getAppointmentsByDate(date);
}
