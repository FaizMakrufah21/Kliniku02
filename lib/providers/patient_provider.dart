import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kliniku_server_client/kliniku_server_client.dart';
import '../repositories/patient_repository.dart';
import '../main.dart'; // import client

part 'patient_provider.g.dart';

/// Provides the PatientRepository instance
@riverpod
PatientRepository patientRepository(Ref ref) {
  return PatientRepository(client);
}

/// Fetches the current patient profile for the logged-in user
@riverpod
Future<Patient?> currentPatient(Ref ref) async {
  final repository = ref.watch(patientRepositoryProvider);
  return repository.getCurrentPatient();
}

/// Fetches a patient by ID
@riverpod
Future<Patient?> patientById(Ref ref, int id) async {
  final repository = ref.watch(patientRepositoryProvider);
  return repository.getById(id);
}

/// Fetches a patient by user ID
@riverpod
Future<Patient?> patientByUserId(Ref ref, int userId) async {
  final repository = ref.watch(patientRepositoryProvider);
  return repository.getByUserId(userId);
}

/// Searches patients by name
@riverpod
Future<List<Patient>> patientSearch(Ref ref, String query) async {
  final repository = ref.watch(patientRepositoryProvider);
  return repository.searchByName(query);
}

/// Searches patient by NIK
@riverpod
Future<Patient?> patientByNik(Ref ref, String nik) async {
  final repository = ref.watch(patientRepositoryProvider);
  return repository.searchByNik(nik);
}
