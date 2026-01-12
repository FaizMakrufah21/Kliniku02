import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import 'dart:math' as math;

class LaporanPage extends StatelessWidget {
  const LaporanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 1024;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        _buildHeader(context, isDesktop),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.only(bottom: 24),
            children: [
              const SizedBox(height: 16),
              // Filter Section
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: isDesktop ? 32 : 16),
                child: Row(
                  children: [
                    _FilterButton(
                      icon: Icons.calendar_month,
                      label: 'Jan 2023 - Jun 2023',
                      hasDropdown: true,
                    ),
                    const SizedBox(width: 12),
                    _FilterButton(icon: Icons.filter_list, label: 'Semua Poli'),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // KPI Cards
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: isDesktop ? 32 : 16),
                child: Row(
                  children: [
                    SizedBox(
                      width: 180,
                      child: _KpiCard(
                        icon: Icons.groups,
                        iconBg: Colors.blue[50]!, // Light blue
                        iconColor: AppColors.primary,
                        changeLabel: '12%',
                        changeIcon: Icons.trending_up,
                        isPositive: true,
                        title: 'Total Pasien',
                        value: '1,240',
                      ),
                    ),
                    const SizedBox(width: 16),
                    SizedBox(
                      width: 180,
                      child: _KpiCard(
                        icon: Icons.timer,
                        iconBg: Colors.orange[50]!, // Light orange
                        iconColor: Colors.orange,
                        changeLabel: '2m',
                        changeIcon: Icons.arrow_downward,
                        isPositive: true, // Lower wait time is good
                        title: 'Waktu Tunggu',
                        value: '18 mnt',
                      ),
                    ),
                    const SizedBox(width: 16),
                    SizedBox(
                      width: 180,
                      child: _KpiCard(
                        icon: Icons.payments,
                        iconBg: Colors.green[50]!, // Light green
                        iconColor: Colors.green,
                        changeLabel: '8%',
                        changeIcon: Icons.trending_up,
                        isPositive: true,
                        title: 'Total Pendapatan',
                        value: 'Rp 450jt',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Revenue Chart Container
              Padding(
                padding: EdgeInsets.symmetric(horizontal: isDesktop ? 32 : 16),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardTheme.color,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color:
                          Theme.of(context).dividerTheme.color ?? Colors.grey,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pendapatan Bulanan',
                                style: Theme.of(context).textTheme.titleMedium
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Januari - Juni 2023',
                                style: Theme.of(context).textTheme.bodySmall
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface
                                          .withValues(alpha: 0.5),
                                    ),
                              ),
                            ],
                          ),
                          IconButton(
                            icon: const Icon(Icons.more_horiz),
                            onPressed: () {},
                            color: Theme.of(context).disabledColor,
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: CustomPaint(
                          painter: RevenueChartPainter(
                            color: AppColors.primary,
                            isDark: isDark,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: ['Jan', 'Feb', 'Mar', 'Apr', 'Mei', 'Jun']
                            .map(
                              (e) => Text(
                                e,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Theme.of(context).disabledColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Patient Distribution (Donut) & Reports
              Padding(
                padding: EdgeInsets.symmetric(horizontal: isDesktop ? 32 : 16),
                child: Column(
                  children: [
                    // Donut Chart
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardTheme.color,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color:
                              Theme.of(context).dividerTheme.color ??
                              Colors.grey,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Distribusi Pasien',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              SizedBox(
                                width: 120,
                                height: 120,
                                child: CustomPaint(
                                  painter: DonutChartPainter(
                                    data: [40, 25, 20, 15],
                                    colors: [
                                      AppColors.primary,
                                      Colors
                                          .lightBlueAccent, // Sky 300 equivalent
                                      Colors.tealAccent[400]!, // Teal 400
                                      isDark
                                          ? Colors.grey[700]!
                                          : Colors.grey[300]!,
                                    ],
                                    holeRadius: 40,
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Total',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Theme.of(
                                              context,
                                            ).disabledColor,
                                          ),
                                        ),
                                        Text(
                                          '1,240',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.onSurface,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 24),
                              Expanded(
                                child: Column(
                                  children: const [
                                    _LegendItem(
                                      color: AppColors.primary,
                                      label: 'Poli Umum',
                                      value: '40%',
                                    ),
                                    SizedBox(height: 8),
                                    _LegendItem(
                                      color: Colors.lightBlueAccent,
                                      label: 'Poli Gigi',
                                      value: '25%',
                                    ),
                                    SizedBox(height: 8),
                                    _LegendItem(
                                      color: Colors.tealAccent,
                                      label: 'Poli Anak',
                                      value: '20%',
                                    ),
                                    SizedBox(height: 8),
                                    _LegendItem(
                                      color: Colors.grey,
                                      label: 'Lainnya',
                                      value: '15%',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Recent Reports
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Laporan Terbaru',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Lihat Semua'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const _ReportItem(
                      title: 'Laporan Keuangan Q3',
                      date: '10 Okt 2023 • 2.4 MB',
                      icon: Icons.picture_as_pdf,
                      color: Colors.red,
                    ),
                    const SizedBox(height: 12),
                    const _ReportItem(
                      title: 'Data Pasien Oktober',
                      date: '31 Okt 2023 • 840 KB',
                      icon: Icons.table_view,
                      color: Colors.green,
                    ),
                    const SizedBox(height: 12),
                    const _ReportItem(
                      title: 'Ringkasan Medis Bulanan',
                      date: '01 Nov 2023 • 4.1 MB',
                      icon: Icons.picture_as_pdf,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context, bool isDesktop) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 32 : 16,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).dividerTheme.color ?? Colors.grey,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (!isDesktop) ...[
                Builder(
                  builder: (context) => IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  ),
                ),
              ],
              Text(
                'Laporan & Analitik',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.download,
                color: AppColors.primary,
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool hasDropdown;

  const _FilterButton({
    required this.icon,
    required this.label,
    this.hasDropdown = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(24), // Pill shape
        border: Border.all(
          color: Theme.of(context).dividerTheme.color ?? Colors.grey,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, size: 18, color: AppColors.primary),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
          ),
          if (hasDropdown) ...[
            const SizedBox(width: 4),
            Icon(
              Icons.arrow_drop_down,
              size: 18,
              color: Theme.of(context).disabledColor,
            ),
          ],
        ],
      ),
    );
  }
}

class _KpiCard extends StatelessWidget {
  final IconData icon;
  final Color iconBg;
  final Color iconColor;
  final String changeLabel;
  final IconData changeIcon;
  final bool isPositive;
  final String title;
  final String value;

  const _KpiCard({
    required this.icon,
    required this.iconBg,
    required this.iconColor,
    required this.changeLabel,
    required this.changeIcon,
    required this.isPositive,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Theme.of(context).dividerTheme.color ?? Colors.grey,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: isDark ? iconColor.withValues(alpha: 0.2) : iconBg,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, size: 20, color: iconColor),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: (isPositive ? Colors.green : Colors.red).withValues(
                    alpha: 0.1,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Icon(
                      changeIcon,
                      size: 14,
                      color: isPositive ? Colors.green : Colors.red,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      changeLabel,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: isPositive ? Colors.green : Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).disabledColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _LegendItem extends StatelessWidget {
  final Color color;
  final String label;
  final String value;

  const _LegendItem({
    required this.color,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            ),
            const SizedBox(width: 8),
            Text(label, style: const TextStyle(fontSize: 12)),
          ],
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class _ReportItem extends StatelessWidget {
  final String title;
  final String date;
  final IconData icon;
  final Color color;

  const _ReportItem({
    required this.title,
    required this.date,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    // isDark variable removed as it was unused

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color:
              Theme.of(context).dividerTheme.color ??
              Colors.grey.withValues(alpha: 0.2),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).disabledColor,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.download_rounded),
            onPressed: () {},
            color: Theme.of(context).disabledColor,
          ),
        ],
      ),
    );
  }
}

// Chart Painters
class RevenueChartPainter extends CustomPainter {
  final Color color;
  final bool isDark;

  RevenueChartPainter({required this.color, required this.isDark});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final path = Path();
    // Simulate data points
    final width = size.width;
    final height = size.height;

    // Points: (0, 70%), (20%, 60%), (40%, 30%), (60%, 50%), (80%, 20%), (100%, 10%)
    // Y axis is inverted (0 is top)
    final points = [
      Offset(0, height * 0.7),
      Offset(width * 0.2, height * 0.4),
      Offset(width * 0.4, height * 0.6),
      Offset(width * 0.6, height * 0.3),
      Offset(width * 0.8, height * 0.5),
      Offset(width, height * 0.1),
    ];

    path.moveTo(points[0].dx, points[0].dy);

    // Cubic Bezier interpolation
    for (int i = 0; i < points.length - 1; i++) {
      final p0 = points[i];
      final p1 = points[i + 1];
      final controlPoint1 = Offset(p0.dx + (p1.dx - p0.dx) / 2, p0.dy);
      final controlPoint2 = Offset(p0.dx + (p1.dx - p0.dx) / 2, p1.dy);
      path.cubicTo(
        controlPoint1.dx,
        controlPoint1.dy,
        controlPoint2.dx,
        controlPoint2.dy,
        p1.dx,
        p1.dy,
      );
    }

    canvas.drawPath(path, paint);

    // Gradient Area
    final fillPath = Path.from(path);
    fillPath.lineTo(width, height);
    fillPath.lineTo(0, height);
    fillPath.close();

    final fillPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [color.withValues(alpha: 0.2), color.withValues(alpha: 0.0)],
      ).createShader(Rect.fromLTWH(0, 0, width, height))
      ..style = PaintingStyle.fill;

    canvas.drawPath(fillPath, fillPaint);

    // Grid lines
    final gridPaint = Paint()
      ..color = isDark ? Colors.grey[800]! : Colors.grey[200]!
      ..strokeWidth = 1;

    // Horizontal lines
    canvas.drawLine(Offset(0, height), Offset(width, height), gridPaint);
    canvas.drawLine(
      Offset(0, height * 0.66),
      Offset(width, height * 0.66),
      gridPaint,
    );
    canvas.drawLine(
      Offset(0, height * 0.33),
      Offset(width, height * 0.33),
      gridPaint,
    );
    canvas.drawLine(Offset(0, 0), Offset(width, 0), gridPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class DonutChartPainter extends CustomPainter {
  final List<double> data;
  final List<Color> colors;
  final double holeRadius;

  DonutChartPainter({
    required this.data,
    required this.colors,
    this.holeRadius = 40.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width / 2, size.height / 2);
    final rect = Rect.fromCircle(center: center, radius: radius);

    double startAngle = -math.pi / 2;
    final total = data.reduce((a, b) => a + b);

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 15;

    for (int i = 0; i < data.length; i++) {
      final sweepAngle = (data[i] / total) * 2 * math.pi;
      paint.color = colors[i % colors.length];
      canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
