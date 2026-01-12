import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

/// Endpoint for managing Poli (Polyclinic) data with full CRUD operations.
class PoliEndpoint extends Endpoint {
  // ==================== READ OPERATIONS ====================

  /// Get all polis
  Future<List<Poli>> getAll(Session session) async {
    return await Poli.db.find(session);
  }

  /// Get poli by ID
  Future<Poli?> getById(Session session, int id) async {
    return await Poli.db.findById(session, id);
  }

  /// Get all active polis
  Future<List<Poli>> getActive(Session session) async {
    return await Poli.db.find(
      session,
      where: (t) => t.isActive.equals(true),
    );
  }

  /// Search polis by name
  Future<List<Poli>> searchByName(Session session, String query) async {
    return await Poli.db.find(
      session,
      where: (t) => t.name.ilike('%$query%'),
    );
  }

  // ==================== CREATE OPERATION ====================

  /// Create a new poli
  Future<Poli> create(Session session, Poli poli) async {
    // Set timestamps
    final newPoli = poli.copyWith(
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    return await Poli.db.insertRow(session, newPoli);
  }

  // ==================== UPDATE OPERATION ====================

  /// Update an existing poli
  Future<Poli> update(Session session, Poli poli) async {
    // Find existing
    final existing = await Poli.db.findById(session, poli.id!);
    if (existing == null) {
      throw Exception('Poli dengan ID ${poli.id} tidak ditemukan');
    }

    // Update with new timestamp
    final updatedPoli = poli.copyWith(
      updatedAt: DateTime.now(),
    );
    return await Poli.db.updateRow(session, updatedPoli);
  }

  // ==================== DELETE OPERATION ====================

  /// Delete a poli by ID
  Future<bool> delete(Session session, int id) async {
    final existing = await Poli.db.findById(session, id);
    if (existing == null) {
      return false;
    }

    await Poli.db.deleteRow(session, existing);
    return true;
  }

  /// Soft delete - set poli as inactive instead of deleting
  Future<bool> deactivate(Session session, int id) async {
    final existing = await Poli.db.findById(session, id);
    if (existing == null) {
      return false;
    }

    final deactivated = existing.copyWith(
      isActive: false,
      updatedAt: DateTime.now(),
    );
    await Poli.db.updateRow(session, deactivated);
    return true;
  }
}
