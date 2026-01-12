import 'package:kliniku_server_client/kliniku_server_client.dart';

void main() async {
  // Initialize Serverpod Client
  final client = Client('http://localhost:8080/'); // Default Serverpod port

  try {
    print('Seeding database...');

    // Seed Poliklinik
    print('Seeding Polis...');
    final msg = await client.dataSeed.seedPolis();
    print('Polis: $msg');

    // Seed Specializations
    print('Seeding Specializations...');
    await client.dataSeed.seedSpecializations();

    // Seed Doctors
    print('Seeding Doctors...');
    await client.dataSeed.seedDoctors();

    // Seed Medicines
    print('Seeding Medicines...');
    await client.dataSeed.seedMedicines();

    print('Seeding completed successfully.');
  } catch (e) {
    print('Error seeding database: $e');
  } finally {
    client.close();
  }
}
