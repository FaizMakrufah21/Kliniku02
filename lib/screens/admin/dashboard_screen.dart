import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../widgets/stat_card.dart';
import '../../widgets/weekly_chart.dart';
import '../../widgets/queue_item.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 1024;

    return Column(
      children: [
        _buildHeader(context, isDesktop),
        Expanded(
          child: ListView(
            padding: EdgeInsets.all(isDesktop ? 32 : 16),
            children: [
              // Stats Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'STATISTIK HARI INI',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'Live Updates',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Responsive Grid for Stats
              LayoutBuilder(
                builder: (context, constraints) {
                  final width = constraints.maxWidth;
                  if (width > 800) {
                    return Row(
                      children: const [
                        Expanded(child: _StatCard1()),
                        SizedBox(width: 16),
                        Expanded(child: _StatCard2()),
                        SizedBox(width: 16),
                        Expanded(child: _StatCard3()),
                      ],
                    );
                  } else {
                    return Column(
                      children: const [
                        _StatCard1(),
                        SizedBox(height: 16),
                        _StatCard2(),
                        SizedBox(height: 16),
                        _StatCard3(),
                      ],
                    );
                  }
                },
              ),
              const SizedBox(height: 24),
              // Chart Section
              const WeeklyChart(),
              const SizedBox(height: 24),
              // Queue Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ANTRIAN HARI INI',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Lihat Semua'),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    const QueueItem(
                      name: 'Budi Santoso',
                      details: 'Poli Umum • Dr. Hartono',
                      status: QueueStatus.selesai,
                      avatarColor: Colors.grey,
                    ),
                    const Divider(height: 1),
                    QueueItem(
                      name: 'Siti Aminah',
                      details: 'Poli Gigi • Drg. Sarah',
                      status: QueueStatus.proses,
                      avatarColor: AppColors.pink,
                      avatarContent: const Text(
                        'SA',
                        style: TextStyle(
                          color: AppColors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Divider(height: 1),
                    QueueItem(
                      name: 'Ahmad Dhani',
                      details: 'Poli Anak • Dr. Setiawan',
                      status: QueueStatus.tunggu,
                      avatarColor: AppColors.purple,
                      avatarContent: const Text(
                        'AD',
                        style: TextStyle(
                          color: AppColors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Divider(height: 1),
                    QueueItem(
                      name: 'Rina Wati',
                      details: 'Poli Umum • Dr. Hartono',
                      status: QueueStatus.tunggu,
                      avatarColor: AppColors.blue,
                      avatarContent: const Text(
                        'RW',
                        style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
                const SizedBox(width: 8),
              ],
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isDesktop ? 'Overview' : 'Dashboard',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (isDesktop)
                    Text(
                      'Selamat datang kembali, Dr. Admin',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.5),
                      ),
                    ),
                ],
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
                      ),
                    ),
                  ),
                ],
              ),
              if (!isDesktop) ...[
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
                      'A',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}

class _StatCard1 extends StatelessWidget {
  const _StatCard1();
  @override
  Widget build(BuildContext context) {
    return const StatCard(
      title: 'Total Pasien',
      value: '45',
      subtitle: '+12% vs Kemarin',
      icon: Icons.group,
      color: AppColors.primary,
      subtitleColor: AppColors.emerald,
      trendIcon: Icons.trending_up,
    );
  }
}

class _StatCard2 extends StatelessWidget {
  const _StatCard2();
  @override
  Widget build(BuildContext context) {
    return const StatCard(
      title: 'Pendapatan',
      value: '4.5 Jt',
      subtitle: '+5% vs Target',
      icon: Icons.payments,
      color: AppColors.emerald,
      subtitleColor: AppColors.emerald,
      trendIcon: Icons.trending_up,
    );
  }
}

class _StatCard3 extends StatelessWidget {
  const _StatCard3();
  @override
  Widget build(BuildContext context) {
    return const StatCard(
      title: 'Menunggu Konfirmasi',
      value: '12',
      subtitle: 'Update 5m lalu',
      icon: Icons.pending_actions,
      color: AppColors.amber,
      subtitleColor: null, // Default
      trendIcon: Icons.schedule,
    );
  }
}
