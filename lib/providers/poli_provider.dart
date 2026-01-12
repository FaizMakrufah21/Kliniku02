import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kliniku_server_client/kliniku_server_client.dart';
import '../repositories/poli_repository.dart';
import '../main.dart'; // import client

part 'poli_provider.g.dart';

/// Provides the PoliRepository instance
@riverpod
PoliRepository poliRepository(Ref ref) {
  return PoliRepository(client);
}

/// Fetches all polis
@riverpod
Future<List<Poli>> poliList(Ref ref) async {
  final repository = ref.watch(poliRepositoryProvider);
  return repository.getAllPolis();
}

/// Fetches a poli by ID
@riverpod
Future<Poli?> poliById(Ref ref, int id) async {
  final repository = ref.watch(poliRepositoryProvider);
  return repository.getById(id);
}

/// Fetches all active polis
@riverpod
Future<List<Poli>> activePolis(Ref ref) async {
  final repository = ref.watch(poliRepositoryProvider);
  return repository.getActivePolis();
}

/// Searches polis by name
@riverpod
Future<List<Poli>> poliSearch(Ref ref, String query) async {
  final repository = ref.watch(poliRepositoryProvider);
  return repository.searchByName(query);
}
