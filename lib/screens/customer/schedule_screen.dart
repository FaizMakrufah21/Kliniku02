import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen>
    with SingleTickerProviderStateMixin {
  static const Color _primaryColor = Color(0xFF2E7B99);
  static const Color _backgroundColor = Color(0xFFF6F7F8);

  late TabController _tabController;

  final List<_AppointmentData> _upcomingAppointments = [
    _AppointmentData(
      doctorName: 'Dr. Budi Santoso, Sp.PD',
      specialty: 'Spesialis Penyakit Dalam',
      date: DateTime.now().add(const Duration(days: 2)),
      time: '10:00',
      queueNumber: '#14',
      status: _AppointmentStatus.confirmed,
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuBEziUE5rMTJSOY0bE1PqvCJA2cHjeOPY535mieeK5TnNLuvvRXEKh_brdczUMuX8fpCwJADfg5dxj6w6Fvhl80CTYmW7ZfmijMhWQ1cAceKFiDc925dp4TmR0sGECvhL-FzVgxNvmvCDzHyCQOpgHMD7oxe5kC79TkVg5187nfBbS4XidCeNT73dw-nbjiZMniyYaWb_7dc6wiCJVB10mKWc7ArCR19gSIxfJjF_XKjLg8eaU8ELMJZXO7KDjNUD0Q3-4_SrPX7Ic',
    ),
    _AppointmentData(
      doctorName: 'Dr. Siti Aminah',
      specialty: 'Dokter Umum',
      date: DateTime.now().add(const Duration(days: 5)),
      time: '14:00',
      queueNumber: '#07',
      status: _AppointmentStatus.pending,
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuA23LOQcQOxL7AVsK8eGq5jCKaHbkLe6j2QJ0K3r2X4OxqFnvA6NDGV8y-wQUrvjg4_y-FJLBwXRgLmUhtQSaPVlCJiB8XyjaghsUBz1f5IHh3WSMQ8p4HBYYrmHquf_NU4kfHBrJAwCVFT8UvEcCzLRTl_SkAOPbSGVsjRETu_9NlncmOSJALsrpw0w80Pj-3vTkD50najUJk-VKSMgKhuw04x8zvsOcgvlMwckCAcUrlPEWQrASA1-pntUo_ziLvcJiBNPx9s9iY',
    ),
  ];

  final List<_AppointmentData> _pastAppointments = [
    _AppointmentData(
      doctorName: 'Dr. Andi Wijaya',
      specialty: 'Dokter Umum',
      date: DateTime.now().subtract(const Duration(days: 7)),
      time: '09:00',
      queueNumber: '#05',
      status: _AppointmentStatus.completed,
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuATcDYSZHeAhVxCv1c1z8AB-6DR7_T68hek8i1vqA1cpJADF_QEszeNSXfwQJ9Ez_P1cWPe-LS7RfOB4bUPes8BAwQFyAzp988k0un1tnxrOxquSJ_sNySKV-ysR3Aw7PsIEO0eO07DBFq8GNol-dwcQb3iDmIVVZNbtTquEeRxs7aZihlfN1pYDTftsRcsQf3vze7WozWxCUg6PGaUhiEHcwB9LPzQWqoaqalfmA_Kg-W9FkGhJevj3Ka2kudAS4jMJ4IcpLvh2-c',
    ),
    _AppointmentData(
      doctorName: 'Dr. Rina Kusuma',
      specialty: 'Spesialis Penyakit Dalam',
      date: DateTime.now().subtract(const Duration(days: 14)),
      time: '11:00',
      queueNumber: '#12',
      status: _AppointmentStatus.cancelled,
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuDIuZ6yL-DWTWYpG2ismlSv1r5XnDBJjYRhYQTAXpXY0JK1gXIUZxS9wsDSnVdQE8OmaK1tIJ5JUuAnBTMYweN0Sw1sKW5WYzNZ7Jr98AV6t0YYwtsUeP-LDIUytIkhx0KqODKJG2ISccQZUQrK3dh93xIUKP03oOlhWyKCSLUcF89dd5x9TFmK_Ojo5vMJOcUWov7W3opz7-qRW20I_10CUJgMSYv28i-Q3EleP24qkkpHp7p5SD9O8OKx6N3LSV-LGfoAt5cI36A',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  String _getDayName(DateTime date) {
    const days = ['Min', 'Sen', 'Sel', 'Rab', 'Kam', 'Jum', 'Sab'];
    return days[date.weekday % 7];
  }

  String _getMonthName(DateTime date) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'Mei',
      'Jun',
      'Jul',
      'Agu',
      'Sep',
      'Okt',
      'Nov',
      'Des',
    ];
    return months[date.month - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            _buildTabBar(),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildAppointmentList(_upcomingAppointments, isEmpty: false),
                  _buildAppointmentList(_pastAppointments, isEmpty: false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    // Check if we are on a desktop screen (width >= 768)
    final isDesktop = MediaQuery.of(context).size.width >= 768;

    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
      child: Row(
        children: [
          if (!isDesktop) ...[
            IconButton(
              icon: const Icon(Icons.menu, color: _primaryColor),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
            const SizedBox(width: 8),
          ],
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jadwal Saya',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  'Kelola janji temu Anda',
                  style: TextStyle(fontSize: 14, color: Color(0xFF5A7E8C)),
                ),
              ],
            ),
          ),
          const Icon(Icons.calendar_month, size: 32, color: _primaryColor),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: TabBar(
        controller: _tabController,
        indicator: BoxDecoration(
          color: _primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey[600],
        labelStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        padding: const EdgeInsets.all(4),
        tabs: [
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Mendatang'),
                const SizedBox(width: 6),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '${_upcomingAppointments.length}',
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Tab(text: 'Riwayat'),
        ],
      ),
    );
  }

  Widget _buildAppointmentList(
    List<_AppointmentData> appointments, {
    required bool isEmpty,
  }) {
    if (appointments.isEmpty) {
      return _buildEmptyState();
    }

    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: appointments.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: _buildAppointmentCard(appointments[index]),
        );
      },
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.calendar_today, size: 64, color: Colors.grey[300]),
          const SizedBox(height: 16),
          Text(
            'Belum ada jadwal',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Buat janji temu pertama Anda',
            style: TextStyle(fontSize: 14, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }

  Widget _buildAppointmentCard(_AppointmentData appointment) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey[200]!),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // Status Banner
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: _getStatusColor(appointment.status).withValues(alpha: 0.1),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: _getStatusColor(appointment.status),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  _getStatusText(appointment.status),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: _getStatusColor(appointment.status),
                  ),
                ),
                const Spacer(),
                Text(
                  appointment.queueNumber,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          // Card Content
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[100],
                      ),
                      child: ClipOval(
                        child: Image.network(
                          appointment.imageUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(
                                Icons.person,
                                size: 32,
                                color: Colors.grey,
                              ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            appointment.doctorName,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            appointment.specialty,
                            style: const TextStyle(
                              fontSize: 13,
                              color: _primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Date & Time Row
                Row(
                  children: [
                    Expanded(
                      child: _buildInfoChip(
                        icon: Icons.calendar_today,
                        text:
                            '${_getDayName(appointment.date)}, ${appointment.date.day} ${_getMonthName(appointment.date)}',
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildInfoChip(
                        icon: Icons.access_time,
                        text: '${appointment.time} WIB',
                      ),
                    ),
                  ],
                ),
                if (appointment.status == _AppointmentStatus.confirmed ||
                    appointment.status == _AppointmentStatus.pending) ...[
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.red,
                            side: const BorderSide(color: Colors.red),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text('Batalkan'),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _primaryColor,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text('Lihat Detail'),
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoChip({required IconData icon, required String text}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, size: 16, color: Colors.grey[600]),
          const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor(_AppointmentStatus status) {
    switch (status) {
      case _AppointmentStatus.confirmed:
        return Colors.green;
      case _AppointmentStatus.pending:
        return Colors.orange;
      case _AppointmentStatus.completed:
        return _primaryColor;
      case _AppointmentStatus.cancelled:
        return Colors.red;
    }
  }

  String _getStatusText(_AppointmentStatus status) {
    switch (status) {
      case _AppointmentStatus.confirmed:
        return 'Dikonfirmasi';
      case _AppointmentStatus.pending:
        return 'Menunggu Konfirmasi';
      case _AppointmentStatus.completed:
        return 'Selesai';
      case _AppointmentStatus.cancelled:
        return 'Dibatalkan';
    }
  }
}

enum _AppointmentStatus { confirmed, pending, completed, cancelled }

class _AppointmentData {
  final String doctorName;
  final String specialty;
  final DateTime date;
  final String time;
  final String queueNumber;
  final _AppointmentStatus status;
  final String imageUrl;

  _AppointmentData({
    required this.doctorName,
    required this.specialty,
    required this.date,
    required this.time,
    required this.queueNumber,
    required this.status,
    required this.imageUrl,
  });
}
