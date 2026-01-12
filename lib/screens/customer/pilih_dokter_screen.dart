import 'package:flutter/material.dart';
import 'pilih_jadwal_screen.dart';

class PilihDokterScreen extends StatefulWidget {
  final String poliName;
  final String poliSubtitle;

  const PilihDokterScreen({
    super.key,
    required this.poliName,
    this.poliSubtitle = '',
  });

  @override
  State<PilihDokterScreen> createState() => _PilihDokterScreenState();
}

class _PilihDokterScreenState extends State<PilihDokterScreen> {
  static const Color _primaryColor = Color(0xFF2E7B99);
  static const Color _backgroundColor = Color(0xFFF6F7F8);
  static const Color _cardColor = Colors.white;
  static const Color _textSecColor = Color(0xFF5A7E8C);

  int _selectedFilter = 0;
  final List<String> _filters = [
    'Semua',
    'Hari Ini',
    'Pria',
    'Wanita',
    'Terdekat',
  ];

  // Mock doctor data
  final List<_DoctorData> _doctors = [
    _DoctorData(
      name: 'Dr. Budi Santoso, Sp.PD',
      specialty: 'Spesialis Penyakit Dalam',
      experience: '12 Tahun Pengalaman',
      rating: 4.8,
      availability: _Availability.availableToday,
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuBEziUE5rMTJSOY0bE1PqvCJA2cHjeOPY535mieeK5TnNLuvvRXEKh_brdczUMuX8fpCwJADfg5dxj6w6Fvhl80CTYmW7ZfmijMhWQ1cAceKFiDc925dp4TmR0sGECvhL-FzVgxNvmvCDzHyCQOpgHMD7oxe5kC79TkVg5187nfBbS4XidCeNT73dw-nbjiZMniyYaWb_7dc6wiCJVB10mKWc7ArCR19gSIxfJjF_XKjLg8eaU8ELMJZXO7KDjNUD0Q3-4_SrPX7Ic',
    ),
    _DoctorData(
      name: 'Dr. Siti Aminah',
      specialty: 'Dokter Umum',
      experience: '8 Tahun Pengalaman',
      rating: 4.9,
      availability: _Availability.availableTomorrow,
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuA23LOQcQOxL7AVsK8eGq5jCKaHbkLe6j2QJ0K3r2X4OxqFnvA6NDGV8y-wQUrvjg4_y-FJLBwXRgLmUhtQSaPVlCJiB8XyjaghsUBz1f5IHh3WSMQ8p4HBYYrmHquf_NU4kfHBrJAwCVFT8UvEcCzLRTl_SkAOPbSGVsjRETu_9NlncmOSJALsrpw0w80Pj-3vTkD50najUJk-VKSMgKhuw04x8zvsOcgvlMwckCAcUrlPEWQrASA1-pntUo_ziLvcJiBNPx9s9iY',
    ),
    _DoctorData(
      name: 'Dr. Andi Wijaya',
      specialty: 'Dokter Umum',
      experience: '5 Tahun Pengalaman',
      rating: 4.7,
      availability: _Availability.availableToday,
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuATcDYSZHeAhVxCv1c1z8AB-6DR7_T68hek8i1vqA1cpJADF_QEszeNSXfwQJ9Ez_P1cWPe-LS7RfOB4bUPes8BAwQFyAzp988k0un1tnxrOxquSJ_sNySKV-ysR3Aw7PsIEO0eO07DBFq8GNol-dwcQb3iDmIVVZNbtTquEeRxs7aZihlfN1pYDTftsRcsQf3vze7WozWxCUg6PGaUhiEHcwB9LPzQWqoaqalfmA_Kg-W9FkGhJevj3Ka2kudAS4jMJ4IcpLvh2-c',
    ),
    _DoctorData(
      name: 'Dr. Rina Kusuma',
      specialty: 'Spesialis Penyakit Dalam',
      experience: '20+ Tahun Pengalaman',
      rating: 0,
      availability: _Availability.notAvailable,
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuDIuZ6yL-DWTWYpG2ismlSv1r5XnDBJjYRhYQTAXpXY0JK1gXIUZxS9wsDSnVdQE8OmaK1tIJ5JUuAnBTMYweN0Sw1sKW5WYzNZ7Jr98AV6t0YYwtsUeP-LDIUytIkhx0KqODKJG2ISccQZUQrK3dh93xIUKP03oOlhWyKCSLUcF89dd5x9TFmK_Ojo5vMJOcUWov7W3opz7-qRW20I_10CUJgMSYv28i-Q3EleP24qkkpHp7p5SD9O8OKx6N3LSV-LGfoAt5cI36A',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(context),
            _buildProgressBar(),
            _buildFilters(),
            Expanded(child: _buildDoctorList()),
            _buildBottomHelp(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 16, 16, 8),
      decoration: BoxDecoration(
        color: _backgroundColor,
        border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black87,
              size: 20,
            ),
          ),
          const Expanded(
            child: Text(
              'Pilih Dokter',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.5,
              ),
            ),
          ),
          const SizedBox(width: 40),
        ],
      ),
    );
  }

  Widget _buildProgressBar() {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
      decoration: BoxDecoration(
        color: _backgroundColor,
        border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'LANGKAH 2 DARI 4',
                style: TextStyle(
                  color: _primaryColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0,
                ),
              ),
              Text(
                'Poli ${widget.poliName}',
                style: const TextStyle(color: _textSecColor, fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: 0.5, // 2 of 4 steps = 50%
              backgroundColor: Colors.grey[200],
              valueColor: const AlwaysStoppedAnimation<Color>(_primaryColor),
              minHeight: 6,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilters() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: _backgroundColor,
        border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: List.generate(_filters.length, (index) {
            final isSelected = _selectedFilter == index;
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: FilterChip(
                label: Text(_filters[index]),
                selected: isSelected,
                onSelected: (selected) {
                  setState(() {
                    _selectedFilter = index;
                  });
                },
                backgroundColor: Colors.white,
                selectedColor: _primaryColor,
                labelStyle: TextStyle(
                  color: isSelected ? Colors.white : Colors.black87,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: isSelected ? _primaryColor : Colors.grey[300]!,
                  ),
                ),
                showCheckmark: false,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _buildDoctorList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _doctors.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: _buildDoctorCard(_doctors[index]),
        );
      },
    );
  }

  Widget _buildDoctorCard(_DoctorData doctor) {
    final isAvailable = doctor.availability != _Availability.notAvailable;

    return Opacity(
      opacity: isAvailable ? 1.0 : 0.7,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: _cardColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey[100]!),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.03),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            // Doctor Image and Rating
            Stack(
              clipBehavior: Clip.none,
              children: [
                ColorFiltered(
                  colorFilter: isAvailable
                      ? const ColorFilter.mode(
                          Colors.transparent,
                          BlendMode.multiply,
                        )
                      : const ColorFilter.mode(
                          Colors.grey,
                          BlendMode.saturation,
                        ),
                  child: Container(
                    width: 96,
                    height: 96,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        doctor.imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(
                              Icons.person,
                              size: 48,
                              color: Colors.grey,
                            ),
                      ),
                    ),
                  ),
                ),
                if (doctor.rating > 0)
                  Positioned(
                    bottom: -8,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 14,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              doctor.rating.toString(),
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 16),
            // Doctor Info
            Text(
              doctor.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              doctor.specialty,
              style: const TextStyle(fontSize: 14, color: _textSecColor),
              textAlign: TextAlign.center,
            ),
            Text(
              doctor.experience,
              style: TextStyle(fontSize: 12, color: Colors.grey[400]),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            // Availability Badge
            _buildAvailabilityBadge(doctor.availability),
            const SizedBox(height: 12),
            // Action Button
            _buildActionButton(doctor),
          ],
        ),
      ),
    );
  }

  Widget _buildAvailabilityBadge(_Availability availability) {
    Color bgColor;
    Color textColor;
    Color borderColor;
    String text;
    IconData? icon;
    bool showPulse = false;

    switch (availability) {
      case _Availability.availableToday:
        bgColor = const Color(0xFFECFDF5);
        textColor = const Color(0xFF047857);
        borderColor = const Color(0xFFD1FAE5);
        text = 'Tersedia hari ini';
        showPulse = true;
        break;
      case _Availability.availableTomorrow:
        bgColor = const Color(0xFFFFF7ED);
        textColor = const Color(0xFFC2410C);
        borderColor = const Color(0xFFFFEDD5);
        text = 'Tersedia besok';
        icon = Icons.schedule;
        break;
      case _Availability.notAvailable:
        bgColor = const Color(0xFFFEF2F2);
        textColor = const Color(0xFFB91C1C);
        borderColor = const Color(0xFFFEE2E2);
        text = 'Tidak Tersedia';
        icon = Icons.block;
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showPulse) ...[
            Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                color: textColor,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 6),
          ],
          if (icon != null) ...[
            Icon(icon, size: 14, color: textColor),
            const SizedBox(width: 6),
          ],
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(_DoctorData doctor) {
    final isAvailable = doctor.availability != _Availability.notAvailable;
    final isToday = doctor.availability == _Availability.availableToday;

    if (!isAvailable) {
      return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[200],
            disabledBackgroundColor: Colors.grey[200],
            disabledForegroundColor: Colors.grey[400],
            padding: const EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 0,
          ),
          child: const Text(
            'PENUH',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          // Navigate to Step 3 - Select Date/Time
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PilihJadwalScreen(
                poliName: widget.poliName,
                doctorName: doctor.name,
                doctorSpecialty: doctor.specialty,
                doctorImageUrl: doctor.imageUrl,
              ),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isToday ? _primaryColor : Colors.grey[100],
          foregroundColor: isToday ? Colors.white : Colors.black87,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: isToday ? 2 : 0,
          shadowColor: isToday
              ? _primaryColor.withValues(alpha: 0.3)
              : Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'PILIH',
              style: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 0.5),
            ),
            if (isToday) ...[
              const SizedBox(width: 4),
              const Icon(Icons.chevron_right, size: 18),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildBottomHelp() {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        border: Border(top: BorderSide(color: Colors.grey[200]!)),
      ),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          onPressed: () {
            // TODO: Show help dialog or navigate to help
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: _textSecColor,
            side: BorderSide(color: Colors.grey[300]!),
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text(
            'Butuh bantuan memilih dokter?',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}

enum _Availability { availableToday, availableTomorrow, notAvailable }

class _DoctorData {
  final String name;
  final String specialty;
  final String experience;
  final double rating;
  final _Availability availability;
  final String imageUrl;

  _DoctorData({
    required this.name,
    required this.specialty,
    required this.experience,
    required this.rating,
    required this.availability,
    required this.imageUrl,
  });
}
