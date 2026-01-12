enum AntrianStatus { serving, waiting, done }

class Antrian {
  final int id;
  final String queueNumber;
  final String patientName;
  final String poli;
  final String time;
  final AntrianStatus status;

  const Antrian({
    required this.id,
    required this.queueNumber,
    required this.patientName,
    required this.poli,
    required this.time,
    required this.status,
  });
}

final List<Antrian> dummyAntrianList = [
  const Antrian(
    id: 1,
    queueNumber: 'A001',
    patientName: 'Budi Santoso',
    poli: 'Poli Umum',
    time: 'Daftar: 08:30 WIB',
    status: AntrianStatus.serving,
  ),
  const Antrian(
    id: 2,
    queueNumber: 'A002',
    patientName: 'Siti Aminah',
    poli: 'Poli Gigi',
    time: 'Daftar: 08:45 WIB',
    status: AntrianStatus.waiting,
  ),
  const Antrian(
    id: 3,
    queueNumber: 'B001',
    patientName: 'Anak Rina',
    poli: 'Poli Anak',
    time: 'Daftar: 09:00 WIB',
    status: AntrianStatus.waiting,
  ),
  const Antrian(
    id: 4,
    queueNumber: 'A000',
    patientName: 'Rudi Hartono',
    poli: 'Poli Umum',
    time: 'Selesai 08:20',
    status: AntrianStatus.done,
  ),
];
