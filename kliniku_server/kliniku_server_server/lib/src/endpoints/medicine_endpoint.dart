import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

/// Endpoint for managing Medicine data with full CRUD operations.
class MedicineEndpoint extends Endpoint {
  // ==================== READ OPERATIONS ====================

  /// Get all medicines
  Future<List<Medicine>> getAll(Session session) async {
    return await Medicine.db.find(session);
  }

  /// Get medicine by ID
  Future<Medicine?> getById(Session session, int id) async {
    return await Medicine.db.findById(session, id);
  }

  /// Get medicine by code
  Future<Medicine?> getByCode(Session session, String code) async {
    final medicines = await Medicine.db.find(
      session,
      where: (t) => t.code.equals(code),
    );
    return medicines.isEmpty ? null : medicines.first;
  }

  /// Search medicines by name
  Future<List<Medicine>> searchByName(Session session, String query) async {
    return await Medicine.db.find(
      session,
      where: (t) => t.name.ilike('%$query%') | t.genericName.ilike('%$query%'),
    );
  }

  /// Get medicines by category
  Future<List<Medicine>> getByCategory(Session session, String category) async {
    return await Medicine.db.find(
      session,
      where: (t) => t.category.equals(category),
    );
  }

  /// Get active medicines
  Future<List<Medicine>> getActive(Session session) async {
    return await Medicine.db.find(
      session,
      where: (t) => t.isActive.equals(true),
    );
  }

  /// Get medicines that require prescription
  Future<List<Medicine>> getPrescriptionRequired(Session session) async {
    return await Medicine.db.find(
      session,
      where: (t) =>
          t.requiresPrescription.equals(true) & t.isActive.equals(true),
    );
  }

  /// Get over-the-counter medicines (no prescription required)
  Future<List<Medicine>> getOverTheCounter(Session session) async {
    return await Medicine.db.find(
      session,
      where: (t) =>
          t.requiresPrescription.equals(false) & t.isActive.equals(true),
    );
  }

  // ==================== CREATE OPERATION ====================

  /// Create a new medicine
  Future<Medicine> create(Session session, Medicine medicine) async {
    // Check if medicine with code already exists
    final existing = await getByCode(session, medicine.code);
    if (existing != null) {
      throw Exception('Obat dengan kode ${medicine.code} sudah ada');
    }

    final newMedicine = medicine.copyWith(
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      isActive: true,
    );
    return await Medicine.db.insertRow(session, newMedicine);
  }

  // ==================== UPDATE OPERATION ====================

  /// Update an existing medicine
  Future<Medicine> update(Session session, Medicine medicine) async {
    final existing = await Medicine.db.findById(session, medicine.id!);
    if (existing == null) {
      throw Exception('Obat dengan ID ${medicine.id} tidak ditemukan');
    }

    final updatedMedicine = medicine.copyWith(
      updatedAt: DateTime.now(),
    );
    return await Medicine.db.updateRow(session, updatedMedicine);
  }

  /// Update medicine price
  Future<Medicine> updatePrice(
    Session session,
    int medicineId,
    double newPrice,
  ) async {
    final existing = await Medicine.db.findById(session, medicineId);
    if (existing == null) {
      throw Exception('Obat dengan ID $medicineId tidak ditemukan');
    }

    final updated = existing.copyWith(
      price: newPrice,
      updatedAt: DateTime.now(),
    );
    return await Medicine.db.updateRow(session, updated);
  }

  // ==================== DELETE OPERATION ====================

  /// Delete a medicine by ID
  Future<bool> delete(Session session, int id) async {
    final existing = await Medicine.db.findById(session, id);
    if (existing == null) {
      return false;
    }
    await Medicine.db.deleteRow(session, existing);
    return true;
  }

  /// Soft delete - set medicine as inactive
  Future<bool> deactivate(Session session, int id) async {
    final existing = await Medicine.db.findById(session, id);
    if (existing == null) {
      return false;
    }

    final deactivated = existing.copyWith(
      isActive: false,
      updatedAt: DateTime.now(),
    );
    await Medicine.db.updateRow(session, deactivated);
    return true;
  }

  /// Reactivate a deactivated medicine
  Future<bool> activate(Session session, int id) async {
    final existing = await Medicine.db.findById(session, id);
    if (existing == null) {
      return false;
    }

    final activated = existing.copyWith(
      isActive: true,
      updatedAt: DateTime.now(),
    );
    await Medicine.db.updateRow(session, activated);
    return true;
  }
}
