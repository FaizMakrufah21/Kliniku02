enum PasienStatus { active, nonActive }

class Pasien {
  final int id;
  final String name;
  final String nik;
  final String phone;
  final String lastVisit;
  final PasienStatus status;

  const Pasien({
    required this.id,
    required this.name,
    required this.nik,
    required this.phone,
    required this.lastVisit,
    required this.status,
  });
}

final List<Pasien> dummyPasienList = [
  const Pasien(
    id: 1,
    name: 'Budi Santoso',
    nik: '3201234567890001',
    phone: '0812-3456-7890',
    lastVisit: '12 Okt 2023',
    status: PasienStatus.active,
  ),
  const Pasien(
    id: 2,
    name: 'Siti Aminah',
    nik: '3205559876543210',
    phone: '0813-9876-5432',
    lastVisit: '10 Okt 2023',
    status: PasienStatus.active,
  ),
  const Pasien(
    id: 3,
    name: 'Andi Pratama',
    nik: '3276123456789012',
    phone: '0857-1234-5678',
    lastVisit: '25 Sep 2023',
    status: PasienStatus.nonActive,
  ),
  const Pasien(
    id: 4,
    name: 'Dewi Lestari',
    nik: '3172012345678901',
    phone: '0811-2233-4455',
    lastVisit: '01 Sep 2023',
    status: PasienStatus.active,
  ),
];
