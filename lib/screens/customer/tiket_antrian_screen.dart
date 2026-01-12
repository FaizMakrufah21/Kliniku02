import 'package:flutter/material.dart';
import 'main_layout.dart';

class TiketAntrianScreen extends StatelessWidget {
  final String poliName;
  final String doctorName;
  final String doctorSpecialty;
  final String doctorImageUrl;
  final DateTime appointmentDate;
  final String appointmentTime;
  final String queueNumber;
  final String bookingId;

  const TiketAntrianScreen({
    super.key,
    required this.poliName,
    required this.doctorName,
    required this.doctorSpecialty,
    this.doctorImageUrl = '',
    required this.appointmentDate,
    required this.appointmentTime,
    this.queueNumber = 'A003',
    this.bookingId = 'RSV-2025011001',
  });

  static const Color _primaryColor = Color(0xFF2E7B99);
  static const Color _backgroundColor = Color(0xFFF6F7F8);

  String _getDayName(DateTime date) {
    const days = [
      'Minggu',
      'Senin',
      'Selasa',
      'Rabu',
      'Kamis',
      'Jumat',
      'Sabtu',
    ];
    return days[date.weekday % 7];
  }

  String _getMonthName(DateTime date) {
    const months = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember',
    ];
    return months[date.month - 1];
  }

  String _getFormattedDate() {
    return '${_getDayName(appointmentDate)}, ${appointmentDate.day} ${_getMonthName(appointmentDate).substring(0, 3)} ${appointmentDate.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(context),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    _buildSuccessHeader(),
                    const SizedBox(height: 24),
                    _buildTicketCard(context),
                  ],
                ),
              ),
            ),
            _buildActionButtons(context),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 48), // Spacer for balance
          const Text(
            'Tiket Antrian',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827), // gray-900
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (_) => const CustomerMainLayout()),
                (route) => false,
              );
            },
            icon: const Icon(Icons.close),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white.withValues(alpha: 0.5),
              shape: const CircleBorder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSuccessHeader() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFDCFCE7), // green-100
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xFFF0FDF4), // green-50 (ring)
              width: 8,
            ),
          ),
          child: const Icon(
            Icons.check_circle,
            size: 48,
            color: Color(0xFF16A34A), // green-600
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'RESERVASI BERHASIL',
          style: TextStyle(
            fontSize: 24, // text-2xl
            fontWeight: FontWeight.bold,
            letterSpacing: -0.5,
            color: Color(0xFF111827), // gray-900
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Tunjukkan tiket ini saat kedatangan',
          style: TextStyle(
            fontSize: 14, // text-sm
            color: Color(0xFF6B7280), // gray-500
          ),
        ),
      ],
    );
  }

  Widget _buildTicketCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16), // rounded-2xl
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 20, // shadow-xl approximately
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          children: [
            // Top Section: Queue Info
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey[200]!,
                        width: 2,
                        style: BorderStyle
                            .none, // We'll custom draw dashed line if needed or use image
                        // Using simple border for now, custom painter below for dashed
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'NOMOR ANTRIAN',
                        style: TextStyle(
                          color: _primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.2,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        queueNumber,
                        style: const TextStyle(
                          fontSize: 48, // text-5xl
                          fontWeight: FontWeight.w900, // font-black
                          color: Color(0xFF111827), // gray-900
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3F4F6), // gray-100
                          borderRadius: BorderRadius.circular(999),
                        ),
                        child: Text(
                          bookingId,
                          style: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'monospace',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5,
                            color: Color(0xFF4B5563), // gray-600
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Notches
                Positioned(
                  bottom: -12,
                  left: -12,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      color: _backgroundColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -12,
                  right: -12,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      color: _backgroundColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                // Dashed Line
                Positioned(
                  bottom: 0,
                  left: 12,
                  right: 12,
                  child: CustomPaint(
                    size: const Size(double.infinity, 1),
                    painter: _DashedLinePainter(color: Colors.grey[300]!),
                  ),
                ),
              ],
            ),

            // Middle Section: Doctor & Time
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
              child: Column(
                children: [
                  // Doctor Info
                  Row(
                    children: [
                      Container(
                        width: 56, // w-14
                        height: 56, // h-14
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.05),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: ClipOval(
                          child: doctorImageUrl.isNotEmpty
                              ? Image.network(
                                  doctorImageUrl,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      const Icon(
                                        Icons.person,
                                        color: Colors.grey,
                                      ),
                                )
                              : const Icon(Icons.person, color: Colors.grey),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              doctorName,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF111827),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              doctorSpecialty,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: _primaryColor,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const Text(
                              'Klinik Utama Sehat', // Hardcoded as per HTML example or use poliName text? HTML says "Klinik Utama Sehat"
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF9CA3AF), // gray-400
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // Date & Time Grid
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.calendar_month,
                                  size: 18,
                                  color: Color(0xFF9CA3AF),
                                ),
                                const SizedBox(width: 6),
                                const Text(
                                  'TANGGAL',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF9CA3AF),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(
                              _getFormattedDate(),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1F2937),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.schedule,
                                  size: 18,
                                  color: Color(0xFF9CA3AF),
                                ),
                                const SizedBox(width: 6),
                                const Text(
                                  'WAKTU',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF9CA3AF),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '$appointmentTime - ${_getEndTime(appointmentTime)} WIB',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1F2937),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24), // Extra spacing before QR
                  // QR Code Section
                  Center(
                    child: Column(
                      children: [
                        Container(
                          width: 144, // w-36 * 4 = 144
                          height: 144,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey[100]!),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.05),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Container(
                            color: Colors.grey[200], // Placeholder for QR
                            child: const Icon(
                              Icons.qr_code_2,
                              size: 100,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'SCAN QR DI KIOS',
                          style: TextStyle(
                            fontSize: 10,
                            letterSpacing: 2.0, // tracking-widest
                            color: Color(0xFF9CA3AF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: _primaryColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
                shadowColor: _primaryColor.withValues(alpha: 0.2),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.event_available, size: 20),
                  SizedBox(width: 8),
                  Text(
                    'SIMPAN KE KALENDER',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (_) => const CustomerMainLayout()),
                  (route) => false,
                );
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Kembali ke Beranda',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: _primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String _getEndTime(String startTime) {
  final parts = startTime.split(':');
  int hour = int.parse(parts[0]);
  int minute = int.parse(parts[1]) + 30;
  if (minute >= 60) {
    hour++;
    minute -= 60;
  }
  return '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
}

class _DashedLinePainter extends CustomPainter {
  final Color color;

  _DashedLinePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    const dashWidth = 6.0;
    const dashSpace = 4.0;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
