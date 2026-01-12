import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../models/antrian.dart';

class AntrianPage extends StatelessWidget {
  const AntrianPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 1024;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        _buildHeader(context, isDesktop),
        Expanded(
          child: ListView(
            padding: EdgeInsets.all(isDesktop ? 32 : 16),
            children: [
              // Statistics Section
              LayoutBuilder(
                builder: (context, constraints) {
                  final width = constraints.maxWidth;
                  if (width > 600) {
                    return Row(
                      children: const [
                        Expanded(
                          child: _StatBox(
                            title: 'Total',
                            value: '45',
                            subtitle: 'Pasien hari ini',
                            icon: Icons.groups,
                            color: null,
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: _StatBox(
                            title: 'Melayani',
                            value: '3',
                            subtitle: 'Sedang diperiksa',
                            icon: Icons.medical_services,
                            color: AppColors.primary,
                            isLightBg: true,
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: _StatBox(
                            title: 'Menunggu',
                            value: '12',
                            subtitle: 'Dalam antrian',
                            icon: Icons.hourglass_top,
                            color: AppColors.amber,
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: _StatBox(
                            title: 'Selesai',
                            value: '30',
                            subtitle: 'Sudah pulang',
                            icon: Icons.check_circle,
                            color: AppColors.emerald,
                          ),
                        ),
                      ],
                    );
                  } else {
                    return GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 1.4,
                      children: const [
                        _StatBox(
                          title: 'Total',
                          value: '45',
                          subtitle: 'Pasien hari ini',
                          icon: Icons.groups,
                          color: null,
                        ),
                        _StatBox(
                          title: 'Melayani',
                          value: '3',
                          subtitle: 'Sedang diperiksa',
                          icon: Icons.medical_services,
                          color: AppColors.primary,
                          isLightBg: true,
                        ),
                        _StatBox(
                          title: 'Menunggu',
                          value: '12',
                          subtitle: 'Dalam antrian',
                          icon: Icons.hourglass_top,
                          color: AppColors.amber,
                        ),
                        _StatBox(
                          title: 'Selesai',
                          value: '30',
                          subtitle: 'Sudah pulang',
                          icon: Icons.check_circle,
                          color: AppColors.emerald,
                        ),
                      ],
                    );
                  }
                },
              ),
              const SizedBox(height: 24),

              // Filter Chips
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Filter Departemen',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                  const SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _FilterChip(label: 'Semua', isActive: true),
                        const SizedBox(width: 12),
                        _FilterChip(label: 'Poli Umum'),
                        const SizedBox(width: 12),
                        _FilterChip(label: 'Poli Gigi'),
                        const SizedBox(width: 12),
                        _FilterChip(label: 'Poli Anak'),
                        const SizedBox(width: 12),
                        _FilterChip(label: 'Poli Mata'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Queue List Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daftar Antrian',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: isDark ? Colors.grey[800] : Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Live',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Queue Items
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: dummyAntrianList.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  return _AntrianCard(antrian: dummyAntrianList[index]);
                },
              ),

              const SizedBox(height: 40),
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
              if (isDesktop)
                const SizedBox.shrink()
              else
                const SizedBox(width: 8),
              Text(
                'Manajemen Antrian',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Stack(
                children: [
                  IconButton(
                    icon: const Icon(Icons.notifications_outlined),
                    onPressed: () {},
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: AppColors.red,
                        shape: BoxShape.circle,
                        border: Border.fromBorderSide(
                          BorderSide(color: Colors.white, width: 1.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 8),
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.2),
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    'AD', // Initials for Dr. Admin or whatever user
                    style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatBox extends StatelessWidget {
  final String title;
  final String value;
  final String subtitle;
  final IconData icon;
  final Color? color;
  final bool isLightBg;

  const _StatBox({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.icon,
    required this.color,
    this.isLightBg = false,
  });

  @override
  Widget build(BuildContext context) {
    // final effectiveColor = color ?? Theme.of(context).colorScheme.onSurface;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final bg = isLightBg
        ? AppColors.primary.withValues(alpha: isDark ? 0.2 : 0.1)
        : Theme.of(context).cardTheme.color;

    final border = isLightBg
        ? Border.all(color: AppColors.primary.withValues(alpha: 0.2))
        : Border.all(color: Theme.of(context).dividerTheme.color!);

    final iconColor = color ?? (isDark ? Colors.grey[400] : Colors.grey[500]);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(12),
        border: border,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(icon, size: 20, color: iconColor),
              const SizedBox(width: 8),
              Text(
                title.toUpperCase(),
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                  color: iconColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: isLightBg
                  ? AppColors.primary
                  : Theme.of(context).colorScheme.onSurface,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 10,
              color: isLightBg
                  ? AppColors.primary.withValues(alpha: 0.7)
                  : Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.4),
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final bool isActive;

  const _FilterChip({required this.label, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: isActive ? AppColors.primary : Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(24),
        border: isActive
            ? null
            : Border.all(color: Theme.of(context).dividerTheme.color!),
        boxShadow: isActive
            ? [
                BoxShadow(
                  color: AppColors.primary.withValues(alpha: 0.2),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ]
            : null,
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isActive
              ? Colors.white
              : Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
    );
  }
}

class _AntrianCard extends StatelessWidget {
  final Antrian antrian;

  const _AntrianCard({required this.antrian});

  @override
  Widget build(BuildContext context) {
    final isServing = antrian.status == AntrianStatus.serving;
    final isDone = antrian.status == AntrianStatus.done;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    Color? cardBg = Theme.of(context).cardTheme.color;
    Color borderColor = Theme.of(context).dividerTheme.color!;
    double opacity = 1.0;

    if (isDone) {
      cardBg = isDark ? Colors.grey[900] : Colors.grey[50];
      opacity = 0.75;
    }

    if (isServing) {
      // Primary thick left border handled by Container structure or BorderSide
      // borderColor = AppColors.primary; // For simple outline
    }

    return Opacity(
      opacity: opacity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            // Main content container
            Container(
              decoration: BoxDecoration(
                color: cardBg,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: borderColor),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.02),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  if (!isDone)
                    Positioned(
                      top: 12,
                      right: 12,
                      child: _StatusPill(status: antrian.status),
                    ),
                  if (isDone)
                    Positioned(
                      top: 12,
                      right: 12,
                      child: _StatusPill(status: antrian.status),
                    ),

                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Queue Number
                            Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(
                                color: isDark
                                    ? Colors.grey[800]
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Theme.of(context).dividerTheme.color!,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  antrian.queueNumber,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onSurface,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            // Patient Info
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    antrian.patientName,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.assignment,
                                        size: 16,
                                        color: Theme.of(context).disabledColor,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        antrian.poli,
                                        style: TextStyle(
                                          color: Theme.of(
                                            context,
                                          ).disabledColor,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    antrian.time,
                                    style: TextStyle(
                                      color: Theme.of(
                                        context,
                                      ).disabledColor.withValues(alpha: 0.7),
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        if (!isDone) ...[
                          const SizedBox(height: 16),
                          // Actions
                          Row(
                            children: [
                              if (isServing) ...[
                                Expanded(
                                  child: _ActionButton(
                                    label: 'Panggil',
                                    icon: Icons.notifications_active,
                                    color: AppColors.primary,
                                    textColor: Colors.white,
                                    filled: true,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: _ActionButton(
                                    label: 'Selesai',
                                    icon: Icons.check,
                                    color: AppColors.emerald,
                                    textColor: Colors.white,
                                    filled: true,
                                  ),
                                ),
                              ] else ...[
                                Expanded(
                                  child: _ActionButton(
                                    label: 'Layani',
                                    icon: Icons.play_arrow,
                                    color: AppColors.primary,
                                    textColor: AppColors.primary,
                                    filled: false,
                                    fadedBg: true,
                                  ),
                                ),
                              ],
                              const SizedBox(width: 8),
                              _SkipButton(),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Left accent border for serving status
            if (isServing)
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                child: Container(width: 4, color: AppColors.primary),
              ),
          ],
        ),
      ),
    );
  }
}

class _StatusPill extends StatelessWidget {
  final AntrianStatus status;

  const _StatusPill({required this.status});

  @override
  Widget build(BuildContext context) {
    Color color;
    String text;
    IconData? icon;
    bool pulse = false;

    switch (status) {
      case AntrianStatus.serving:
        color = AppColors.primary;
        text = 'Sedang Melayani';
        pulse = true;
        break;
      case AntrianStatus.waiting:
        color = AppColors.amber; // Orange
        text = 'Menunggu';
        break;
      case AntrianStatus.done:
        color = AppColors.emerald;
        text = 'Selesai';
        icon = Icons.check;
        break;
    }

    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: isDark ? 0.2 : 0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (pulse) ...[
            Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            ),
            const SizedBox(width: 6),
          ],
          if (icon != null) ...[
            Icon(icon, size: 14, color: color),
            const SizedBox(width: 4),
          ],
          Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final Color textColor;
  final bool filled;
  final bool fadedBg;

  const _ActionButton({
    required this.label,
    required this.icon,
    required this.color,
    required this.textColor,
    this.filled = false,
    this.fadedBg = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: filled
              ? color
              : fadedBg
              ? color.withValues(alpha: 0.1)
              : Colors.transparent,
          foregroundColor: textColor,
          elevation: 0,
          shadowColor: Colors.transparent,
          side: (!filled && !fadedBg)
              ? BorderSide(color: color.withValues(alpha: 0.2))
              : null,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.zero,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}

class _SkipButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          side: BorderSide(color: Theme.of(context).dividerTheme.color!),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          foregroundColor: Theme.of(context).disabledColor,
        ),
        child: const Icon(Icons.skip_next),
      ),
    );
  }
}
