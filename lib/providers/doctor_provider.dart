import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kliniku_server_client/kliniku_server_client.dart';
import '../repositories/doctor_repository.dart';
import '../main.dart'; // import client

part 'doctor_provider.g.dart';

/// Provides the DoctorRepository instance
@riverpod
DoctorRepository doctorRepository(Ref ref) {
  return DoctorRepository(client);
}

/// Fetches all doctors
@riverpod
Future<List<Doctor>> doctorList(Ref ref) async {
  final repository = ref.watch(doctorRepositoryProvider);
  return repository.getAllDoctors();
}

/// Fetches a doctor by ID
@riverpod
Future<Doctor?> doctorById(Ref ref, int id) async {
  final repository = ref.watch(doctorRepositoryProvider);
  return repository.getById(id);
}

/// Fetches doctors by poli ID
@riverpod
Future<List<Doctor>> doctorsByPoli(Ref ref, int poliId) async {
  final repository = ref.watch(doctorRepositoryProvider);
  return repository.getByPoliId(poliId);
}

/// Fetches doctors by specialization ID
@riverpod
Future<List<Doctor>> doctorsBySpecialization(
  Ref ref,
  int specializationId,
) async {
  final repository = ref.watch(doctorRepositoryProvider);
  return repository.getBySpecializationId(specializationId);
}

/// Searches doctors by name
@riverpod
Future<List<Doctor>> doctorSearch(Ref ref, String query) async {
  final repository = ref.watch(doctorRepositoryProvider);
  return repository.searchByName(query);
}

/// Fetches available doctors
@riverpod
Future<List<Doctor>> availableDoctors(Ref ref) async {
  final repository = ref.watch(doctorRepositoryProvider);
  return repository.getAvailableDoctors();
}
