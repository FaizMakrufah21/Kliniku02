enum PegawaiStatus { active, onLeave }

class Pegawai {
  final int id;
  final String name;
  final String employeeId;
  final String position;
  final String department;
  final PegawaiStatus status;
  final String imageUrl;

  const Pegawai({
    required this.id,
    required this.name,
    required this.employeeId,
    required this.position,
    required this.department,
    required this.status,
    required this.imageUrl,
  });
}

// Dummy Data
final List<Pegawai> dummyPegawaiList = [
  const Pegawai(
    id: 1,
    name: 'Dr. Andi',
    employeeId: 'P-001',
    position: 'Dokter Spesialis',
    department: 'Poli Gigi',
    status: PegawaiStatus.active,
    imageUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuAo5p5RCfbFuxuW3tQj4WjgyZqe27xNRMWAT-mDCZ66edn9Wd9jpwSPV1kexKkDh7clH8U2Fll576LLcOTjF95Dq0XDYSgA4lMDCN679QJnA2pc66IuSS9DCg4Z3_oejfngFJ3d4deavqv1PCKtxux_CL5dpZw_0adTBHfFxW-bq51nexTYLLTxmXtmZoKkf2vX_nAnvzoTmNtSRVmxHV1xc_N4vR7TOBI397ZXRuM1vcWuyzIS14b5tX8ubQTglvKpJqWJn6qolyg',
  ),
  const Pegawai(
    id: 2,
    name: 'Siti Aminah',
    employeeId: 'P-002',
    position: 'Perawat',
    department: 'Poli Umum',
    status: PegawaiStatus.onLeave,
    imageUrl:
        'https://lh3.googleusercontent.com/aida-public/AB6AXuDaOmJPP8jcKZhxE4415Mgn-d1skfU1JhrKbNuJswQaGX1qms_uTXXzohh4reDOXiGNNxGgTgcZu4P0qKyz8g5aJNdjIG5SmLdyKA4KHynLOKtTawC0oy3rCB8U74UT3tCp3rhGhZVbh59rXIpdqDcefcD4zSfW-cjm33m9u45jroU6RU4OLL4iPLBqKXnctXfm7k4CBOd-bX9HYXx9ruIIPvLYSpTv8WJalfnCOpbYiujtPj6UhWwyL05_7nPdtPuprG1HMnNC5IM',
  ),
  const Pegawai(
    id: 3,
    name: 'Budi Santoso',
    employeeId: 'P-003',
    position: 'Admin',
    department: 'Front Office',
    status: PegawaiStatus.active,
    imageUrl: '', // Empty to test fallback
  ),
];
