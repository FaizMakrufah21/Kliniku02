import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

/// Endpoint for seeding initial data into the database.
/// Used for development and initial setup.
class DataSeedEndpoint extends Endpoint {
  /// Seed all initial data
  Future<Map<String, int>> seedAll(Session session) async {
    final results = <String, int>{};

    results['specializations'] = await _seedSpecializations(session);
    results['polis'] = await _seedPolis(session);
    results['doctors'] = await _seedDoctors(session);
    results['medicines'] = await _seedMedicines(session);

    return results;
  }

  /// Seed Poli data
  Future<int> seedPolis(Session session) async {
    return await _seedPolis(session);
  }

  /// Seed Specialization data
  Future<int> seedSpecializations(Session session) async {
    return await _seedSpecializations(session);
  }

  /// Seed Doctor data
  Future<int> seedDoctors(Session session) async {
    return await _seedDoctors(session);
  }

  /// Seed Medicine data
  Future<int> seedMedicines(Session session) async {
    return await _seedMedicines(session);
  }

  // ==================== PRIVATE SEED METHODS ====================

  Future<int> _seedSpecializations(Session session) async {
    final specializations = [
      Specialization(name: 'Umum', description: 'Dokter Umum'),
      Specialization(name: 'Gigi', description: 'Dokter Gigi'),
      Specialization(name: 'Anak', description: 'Dokter Spesialis Anak'),
      Specialization(name: 'Mata', description: 'Dokter Spesialis Mata'),
      Specialization(name: 'THT', description: 'Dokter Spesialis THT'),
      Specialization(name: 'Kulit', description: 'Dokter Spesialis Kulit'),
      Specialization(
        name: 'Kandungan',
        description: 'Dokter Spesialis Kandungan',
      ),
      Specialization(name: 'Jantung', description: 'Dokter Spesialis Jantung'),
    ];

    int count = 0;
    for (final spec in specializations) {
      // Check if exists
      final existing = await Specialization.db.find(
        session,
        where: (t) => t.name.equals(spec.name),
      );
      if (existing.isEmpty) {
        await Specialization.db.insertRow(session, spec);
        count++;
      }
    }
    return count;
  }

  Future<int> _seedPolis(Session session) async {
    final now = DateTime.now();
    final polis = [
      Poli(
        name: 'Poli Umum',
        description: 'Pelayanan kesehatan umum',
        iconName: 'medical_services',
        colorHex: '#4CAF50',
        isActive: true,
        createdAt: now,
        updatedAt: now,
      ),
      Poli(
        name: 'Poli Gigi',
        description: 'Pelayanan kesehatan gigi dan mulut',
        iconName: 'dentistry',
        colorHex: '#2196F3',
        isActive: true,
        createdAt: now,
        updatedAt: now,
      ),
      Poli(
        name: 'Poli Anak',
        description: 'Pelayanan kesehatan anak',
        iconName: 'child_care',
        colorHex: '#FF9800',
        isActive: true,
        createdAt: now,
        updatedAt: now,
      ),
      Poli(
        name: 'Poli Mata',
        description: 'Pelayanan kesehatan mata',
        iconName: 'visibility',
        colorHex: '#9C27B0',
        isActive: true,
        createdAt: now,
        updatedAt: now,
      ),
      Poli(
        name: 'Poli THT',
        description: 'Pelayanan Telinga, Hidung, Tenggorokan',
        iconName: 'hearing',
        colorHex: '#00BCD4',
        isActive: true,
        createdAt: now,
        updatedAt: now,
      ),
      Poli(
        name: 'Poli Kulit',
        description: 'Pelayanan kesehatan kulit dan kelamin',
        iconName: 'face',
        colorHex: '#E91E63',
        isActive: true,
        createdAt: now,
        updatedAt: now,
      ),
    ];

    int count = 0;
    for (final poli in polis) {
      final existing = await Poli.db.find(
        session,
        where: (t) => t.name.equals(poli.name),
      );
      if (existing.isEmpty) {
        await Poli.db.insertRow(session, poli);
        count++;
      }
    }
    return count;
  }

  Future<int> _seedDoctors(Session session) async {
    // First get poli and specialization IDs
    final polis = await Poli.db.find(session);
    final specs = await Specialization.db.find(session);

    if (polis.isEmpty || specs.isEmpty) {
      return 0; // Need polis and specs first
    }

    // Find IDs by name
    int? getPoliId(String name) {
      try {
        return polis.firstWhere((p) => p.name.contains(name)).id;
      } catch (e) {
        return polis.first.id;
      }
    }

    int? getSpecId(String name) {
      try {
        return specs.firstWhere((s) => s.name.contains(name)).id;
      } catch (e) {
        return specs.first.id;
      }
    }

    final now = DateTime.now();
    final doctors = [
      Doctor(
        employeeId: 'DOC001',
        name: 'dr. Ahmad Susanto',
        specializationId: getSpecId('Umum')!,
        poliId: getPoliId('Umum')!,
        phone: '081234567001',
        licenseNumber: 'STR-001-2024',
        experienceYears: 10,
        consultationFee: 75000,
        teleconsultFee: 50000,
        status: 'active',
        createdAt: now,
        updatedAt: now,
      ),
      Doctor(
        employeeId: 'DOC002',
        name: 'drg. Siti Rahayu',
        specializationId: getSpecId('Gigi')!,
        poliId: getPoliId('Gigi')!,
        phone: '081234567002',
        licenseNumber: 'STR-002-2024',
        experienceYears: 8,
        consultationFee: 100000,
        teleconsultFee: 75000,
        status: 'active',
        createdAt: now,
        updatedAt: now,
      ),
      Doctor(
        employeeId: 'DOC003',
        name: 'dr. Budi Pratama, Sp.A',
        specializationId: getSpecId('Anak')!,
        poliId: getPoliId('Anak')!,
        phone: '081234567003',
        licenseNumber: 'STR-003-2024',
        experienceYears: 12,
        consultationFee: 125000,
        teleconsultFee: 100000,
        status: 'active',
        createdAt: now,
        updatedAt: now,
      ),
      Doctor(
        employeeId: 'DOC004',
        name: 'dr. Dewi Lestari, Sp.M',
        specializationId: getSpecId('Mata')!,
        poliId: getPoliId('Mata')!,
        phone: '081234567004',
        licenseNumber: 'STR-004-2024',
        experienceYears: 15,
        consultationFee: 150000,
        teleconsultFee: 125000,
        status: 'active',
        createdAt: now,
        updatedAt: now,
      ),
    ];

    int count = 0;
    for (final doctor in doctors) {
      final existing = await Doctor.db.find(
        session,
        where: (t) => t.employeeId.equals(doctor.employeeId),
      );
      if (existing.isEmpty) {
        await Doctor.db.insertRow(session, doctor);
        count++;
      }
    }
    return count;
  }

  Future<int> _seedMedicines(Session session) async {
    final now = DateTime.now();
    final medicines = [
      Medicine(
        code: 'MED001',
        name: 'Paracetamol 500mg',
        genericName: 'Paracetamol',
        category: 'tablet',
        unit: 'tablet',
        manufacturer: 'Kimia Farma',
        price: 500,
        requiresPrescription: false,
        description: 'Obat penurun demam dan pereda nyeri',
        isActive: true,
        createdAt: now,
        updatedAt: now,
      ),
      Medicine(
        code: 'MED002',
        name: 'Amoxicillin 500mg',
        genericName: 'Amoxicillin',
        category: 'kapsul',
        unit: 'kapsul',
        manufacturer: 'Sanbe Farma',
        price: 1500,
        requiresPrescription: true,
        description: 'Antibiotik untuk infeksi bakteri',
        isActive: true,
        createdAt: now,
        updatedAt: now,
      ),
      Medicine(
        code: 'MED003',
        name: 'Vitamin C 1000mg',
        genericName: 'Ascorbic Acid',
        category: 'tablet',
        unit: 'tablet',
        manufacturer: 'Kalbe Farma',
        price: 2000,
        requiresPrescription: false,
        description: 'Suplemen vitamin C daya tahan tubuh',
        isActive: true,
        createdAt: now,
        updatedAt: now,
      ),
      Medicine(
        code: 'MED004',
        name: 'OBH Combi Batuk',
        genericName: 'Obat Batuk Hitam',
        category: 'syrup',
        unit: 'ml',
        manufacturer: 'Combiphar',
        price: 15000,
        requiresPrescription: false,
        description: 'Sirup pereda batuk',
        isActive: true,
        createdAt: now,
        updatedAt: now,
      ),
      Medicine(
        code: 'MED005',
        name: 'Antasida DOEN',
        genericName: 'Antasida',
        category: 'tablet',
        unit: 'tablet',
        manufacturer: 'Indofarma',
        price: 800,
        requiresPrescription: false,
        description: 'Obat maag dan asam lambung',
        isActive: true,
        createdAt: now,
        updatedAt: now,
      ),
    ];

    int count = 0;
    for (final medicine in medicines) {
      final existing = await Medicine.db.find(
        session,
        where: (t) => t.code.equals(medicine.code),
      );
      if (existing.isEmpty) {
        await Medicine.db.insertRow(session, medicine);
        count++;
      }
    }
    return count;
  }
}
