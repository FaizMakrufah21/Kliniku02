import 'package:kliniku_server_client/kliniku_server_client.dart';

/// Repository for handling Medicine-related operations.
class MedicineRepository {
  final Client _client;

  MedicineRepository(this._client);

  /// Gets all medicines.
  Future<List<Medicine>> getAllMedicines() async {
    try {
      return await _client.medicine.getAll();
    } catch (e) {
      throw Exception('Failed to get medicines: $e');
    }
  }

  /// Gets a medicine by its ID.
  Future<Medicine?> getById(int id) async {
    try {
      return await _client.medicine.getById(id);
    } catch (e) {
      throw Exception('Failed to get medicine: $e');
    }
  }

  /// Searches medicines by name.
  Future<List<Medicine>> search(String query) async {
    try {
      return await _client.medicine.searchByName(query);
    } catch (e) {
      throw Exception('Failed to search medicines: $e');
    }
  }

  /// Gets medicines by category.
  Future<List<Medicine>> getByCategory(String category) async {
    try {
      return await _client.medicine.getByCategory(category);
    } catch (e) {
      throw Exception('Failed to get medicines by category: $e');
    }
  }

  /// Gets active medicines (available for sale).
  Future<List<Medicine>> getActiveMedicines() async {
    try {
      return await _client.medicine.getActive();
    } catch (e) {
      throw Exception('Failed to get active medicines: $e');
    }
  }

  /// Gets client for other operations.
  Client get client => _client;
}
