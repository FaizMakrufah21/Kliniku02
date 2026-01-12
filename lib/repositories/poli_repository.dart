import 'package:kliniku_server_client/kliniku_server_client.dart';

/// Repository for handling Poli-related operations.
/// Note: This repository is prepared for when the server endpoints are implemented.
class PoliRepository {
  final Client _client;

  PoliRepository(this._client);

  /// Gets all polis from the server.
  Future<List<Poli>> getAllPolis() async {
    try {
      return await _client.poli.getAll();
    } catch (e) {
      throw Exception('Failed to get polis: $e');
    }
  }

  /// Gets a poli by its ID.
  Future<Poli?> getById(int id) async {
    try {
      return await _client.poli.getById(id);
    } catch (e) {
      throw Exception('Failed to get poli: $e');
    }
  }

  /// Gets all active polis.
  Future<List<Poli>> getActivePolis() async {
    try {
      return await _client.poli.getActive();
    } catch (e) {
      throw Exception('Failed to get active polis: $e');
    }
  }

  /// Searches polis by name.
  Future<List<Poli>> searchByName(String query) async {
    try {
      return await _client.poli.searchByName(query);
    } catch (e) {
      throw Exception('Failed to search polis: $e');
    }
  }

  // Client getter for future endpoint implementation
  Client get client => _client;
}
