import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

/// Endpoint for managing Specialization data with CRUD operations.
class SpecializationEndpoint extends Endpoint {
  // ==================== READ OPERATIONS ====================

  /// Get all specializations
  Future<List<Specialization>> getAll(Session session) async {
    return await Specialization.db.find(session);
  }

  /// Get specialization by ID
  Future<Specialization?> getById(Session session, int id) async {
    return await Specialization.db.findById(session, id);
  }

  /// Search specializations by name
  Future<List<Specialization>> searchByName(
    Session session,
    String query,
  ) async {
    return await Specialization.db.find(
      session,
      where: (t) => t.name.ilike('%$query%'),
    );
  }

  // ==================== CREATE OPERATION ====================

  /// Create a new specialization
  Future<Specialization> create(
    Session session,
    Specialization specialization,
  ) async {
    return await Specialization.db.insertRow(session, specialization);
  }

  // ==================== UPDATE OPERATION ====================

  /// Update an existing specialization
  Future<Specialization> update(
    Session session,
    Specialization specialization,
  ) async {
    final existing = await Specialization.db.findById(
      session,
      specialization.id!,
    );
    if (existing == null) {
      throw Exception(
        'Spesialisasi dengan ID ${specialization.id} tidak ditemukan',
      );
    }
    return await Specialization.db.updateRow(session, specialization);
  }

  // ==================== DELETE OPERATION ====================

  /// Delete a specialization by ID
  Future<bool> delete(Session session, int id) async {
    final existing = await Specialization.db.findById(session, id);
    if (existing == null) {
      return false;
    }
    await Specialization.db.deleteRow(session, existing);
    return true;
  }
}
