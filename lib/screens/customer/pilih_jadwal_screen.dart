import 'package:flutter/material.dart';
import 'konfirmasi_screen.dart';

class PilihJadwalScreen extends StatefulWidget {
  final String poliName;
  final String doctorName;
  final String doctorSpecialty;
  final String doctorImageUrl;
  final double doctorRating;
  final int doctorReviews;

  const PilihJadwalScreen({
    super.key,
    required this.poliName,
    required this.doctorName,
    required this.doctorSpecialty,
    this.doctorImageUrl = '',
    this.doctorRating = 4.8,
    this.doctorReviews = 120,
  });

  @override
  State<PilihJadwalScreen> createState() => _PilihJadwalScreenState();
}

class _PilihJadwalScreenState extends State<PilihJadwalScreen> {
  static const Color _primaryColor = Color(0xFF2E7B99);
  static const Color _backgroundColor = Color(0xFFF6F7F8);
  static const Color _textSecColor = Color(0xFF5A7E8C);

  int _selectedDateIndex = 2; // Default to 3rd date (Rab/15)
  int _selectedTimeIndex = 1; // Default to 10:00 (index 1)
  int _monthOffset = 0;

  // Generate dates for display
  List<DateTime> get _availableDates {
    final now = DateTime.now();
    final baseDate = DateTime(now.year, now.month + _monthOffset, 1);
    // Show 6 days starting from day 13
    return List.generate(6, (index) {
      return DateTime(baseDate.year, baseDate.month, 13 + index);
    });
  }

  // Available time slots
  final List<String> _timeSlots = [
    '09:00',
    '10:00',
    '11:00',
    '14:00',
    '15:00',
    '16:00',
  ];

  // Unavailable slots (empty for now - all available)
  final Set<int> _unavailableSlots = {};

  String _getDayName(DateTime date) {
    const days = ['Min', 'Sen', 'Sel', 'Rab', 'Kam', 'Jum', 'Sab'];
    return days[date.weekday % 7];
  }

  String _getMonthName(int month) {
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
    return months[month - 1];
  }

  bool _isPastDate(int index) {
    // First date (index 0) is past
    return index == 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(context),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDoctorCard(),
                    _buildCalendarHeader(),
                    _buildDateSelector(),
                    _buildTimeSlots(),
                  ],
                ),
              ),
            ),
            _buildBottomButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
      decoration: BoxDecoration(
        color: _backgroundColor.withValues(alpha: 0.95),
        border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back, color: Colors.black87, size: 24),
          ),
          const Expanded(
            child: Text(
              'Pilih Jadwal',
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

  Widget _buildDoctorCard() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[200],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: widget.doctorImageUrl.isNotEmpty
                  ? Image.network(
                      widget.doctorImageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.grey,
                      ),
                    )
                  : const Icon(Icons.person, size: 40, color: Colors.grey),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.doctorName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  widget.doctorSpecialty,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: _primaryColor,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.star, size: 14, color: Colors.amber),
                    const SizedBox(width: 4),
                    Text(
                      widget.doctorRating.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '(${widget.doctorReviews}+ Ulasan)',
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCalendarHeader() {
    final now = DateTime.now();
    final displayMonth = DateTime(now.year, now.month + _monthOffset, 1);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${_getMonthName(displayMonth.month)} ${displayMonth.year}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              IconButton(
                onPressed: _monthOffset > 0
                    ? () {
                        setState(() {
                          _monthOffset--;
                          _selectedDateIndex = 2;
                        });
                      }
                    : null,
                icon: Icon(
                  Icons.chevron_left,
                  color: _monthOffset > 0 ? Colors.black87 : Colors.grey[400],
                ),
                iconSize: 20,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
              ),
              IconButton(
                onPressed: _monthOffset < 2
                    ? () {
                        setState(() {
                          _monthOffset++;
                          _selectedDateIndex = 2;
                        });
                      }
                    : null,
                icon: Icon(
                  Icons.chevron_right,
                  color: _monthOffset < 2 ? Colors.black87 : Colors.grey[400],
                ),
                iconSize: 20,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDateSelector() {
    return SizedBox(
      height: 88,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: _availableDates.length,
        itemBuilder: (context, index) {
          final date = _availableDates[index];
          final isSelected = _selectedDateIndex == index;
          final isPast = _isPastDate(index);

          return GestureDetector(
            onTap: isPast
                ? null
                : () {
                    setState(() {
                      _selectedDateIndex = index;
                      _selectedTimeIndex = -1;
                    });
                  },
            child: Container(
              width: 72,
              margin: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                color: isPast
                    ? Colors.grey[100]
                    : (isSelected ? _primaryColor : Colors.white),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isPast
                      ? Colors.transparent
                      : (isSelected ? _primaryColor : Colors.grey[300]!),
                ),
                boxShadow: isSelected
                    ? [
                        BoxShadow(
                          color: _primaryColor.withValues(alpha: 0.3),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ]
                    : (isPast
                          ? null
                          : [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.03),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _getDayName(date),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: isPast
                          ? Colors.grey[400]
                          : (isSelected
                                ? Colors.white.withValues(alpha: 0.9)
                                : _textSecColor),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${date.day}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isPast
                          ? Colors.grey[400]
                          : (isSelected ? Colors.white : Colors.black87),
                    ),
                  ),
                  if (isSelected)
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTimeSlots() {
    final availableCount = _timeSlots.length - _unavailableSlots.length;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Waktu Tersedia',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '$availableCount slot tersedia',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 2.2,
            ),
            itemCount: _timeSlots.length,
            itemBuilder: (context, index) {
              final isUnavailable = _unavailableSlots.contains(index);
              final isSelected = _selectedTimeIndex == index;

              return GestureDetector(
                onTap: isUnavailable
                    ? null
                    : () {
                        setState(() {
                          _selectedTimeIndex = index;
                        });
                      },
                child: Container(
                  decoration: BoxDecoration(
                    color: isUnavailable
                        ? Colors.grey[100]
                        : (isSelected ? _primaryColor : Colors.white),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: isUnavailable
                          ? Colors.grey[200]!
                          : (isSelected ? _primaryColor : Colors.grey[300]!),
                    ),
                    boxShadow: isSelected
                        ? [
                            BoxShadow(
                              color: _primaryColor.withValues(alpha: 0.2),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ]
                        : null,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (isSelected)
                        const Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: Icon(
                            Icons.check,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                      Text(
                        _timeSlots[index],
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: isUnavailable
                              ? Colors.grey[400]
                              : (isSelected ? Colors.white : Colors.black87),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 24),
          // Legend
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLegendItem(Colors.white, Colors.grey[300]!, 'Tersedia'),
              const SizedBox(width: 16),
              _buildLegendItem(_primaryColor, _primaryColor, 'Dipilih'),
              const SizedBox(width: 16),
              _buildLegendItem(
                Colors.grey[100]!,
                Colors.grey[200]!,
                'Tidak Tersedia',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLegendItem(Color fillColor, Color borderColor, String label) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: fillColor,
            shape: BoxShape.circle,
            border: Border.all(color: borderColor),
          ),
        ),
        const SizedBox(width: 6),
        Text(label, style: TextStyle(fontSize: 11, color: Colors.grey[600])),
      ],
    );
  }

  Widget _buildBottomButton() {
    final isEnabled =
        _selectedTimeIndex >= 0 &&
        _selectedDateIndex >= 0 &&
        !_isPastDate(_selectedDateIndex);
    final selectedDate = _availableDates[_selectedDateIndex];

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey[200]!)),
      ),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: isEnabled
              ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KonfirmasiScreen(
                        poliName: widget.poliName,
                        doctorName: widget.doctorName,
                        doctorSpecialty: widget.doctorSpecialty,
                        doctorImageUrl: widget.doctorImageUrl,
                        appointmentDate: selectedDate,
                        appointmentTime: _timeSlots[_selectedTimeIndex],
                      ),
                    ),
                  );
                }
              : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: _primaryColor,
            disabledBackgroundColor: Colors.grey[300],
            foregroundColor: Colors.white,
            disabledForegroundColor: Colors.grey[500],
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: isEnabled ? 4 : 0,
            shadowColor: _primaryColor.withValues(alpha: 0.4),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LANJUTKAN',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              SizedBox(width: 8),
              Icon(Icons.arrow_forward, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
