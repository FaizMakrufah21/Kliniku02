import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../screens/login_page.dart';

class Sidebar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const Sidebar({
    super.key,
    this.selectedIndex = 0,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 256, // w-64
      color: Theme.of(context).cardTheme.color,
      child: Column(
        children: [
          // Header
          Container(
            height: 64, // h-16
            padding: const EdgeInsets.symmetric(horizontal: 24),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).dividerTheme.color ?? Colors.grey,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.local_hospital,
                  color: AppColors.primary,
                  size: 32,
                ), // local_hospital
                const SizedBox(width: 8),
                Text(
                  'Kliniku',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Menu
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12),
              children: [
                _buildSectionHeader(context, 'MAIN MENU'),
                _buildMenuItem(context, 0, 'Dashboard', Icons.dashboard),
                _buildMenuItem(context, 1, 'Poli', Icons.medical_services),
                _buildMenuItem(context, 2, 'Pegawai', Icons.monitor_heart),
                _buildMenuItem(context, 3, 'Pasien', Icons.people),
                _buildMenuItem(context, 4, 'Antrian', Icons.queue_music),
                _buildMenuItem(context, 5, 'Laporan', Icons.description),
                _buildMenuItem(context, 6, 'Stok Obat', Icons.medication),
                const SizedBox(height: 32),
                _buildSectionHeader(context, 'SYSTEM'),
                _buildMenuItem(context, 7, 'Setting', Icons.settings),
              ],
            ),
          ),
          // User Profile
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Theme.of(context).dividerTheme.color ?? Colors.grey,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuBff0szMcho91T7-Umoefzsgidv_TcuTGvRs-pXRALgG4YJy9vRCsuOXgzCuzRPn2xzRY8mN51qWvHNdIMNGkN2pOk_iw1DTxunFRiYYYWzKAQ1mKX-gFgR7YejCpmSxY-rBh-Qe2FF2ZbcMknYy88ByG7HKhsIP2rS1K8_MX1rK0CHcuC-JViy1wKnxJgJvmy3yYJmihLHJ6JK0X1zYs5PMaLnolTx_eCW_f4_lUSpxWU9Q5RPpOUubQxGxPU4AXBXyFZcJiMOARQ',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Admin',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'admin@kliniku.com',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withValues(alpha: 0.5),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Show confirmation dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext dialogContext) {
                        return AlertDialog(
                          title: const Text('Logout'),
                          content: const Text(
                            'Are you sure you want to logout?',
                          ),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.of(dialogContext).pop(),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(dialogContext).pop();
                                Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                    builder: (_) => const LoginPage(),
                                  ),
                                  (route) => false,
                                );
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.red,
                              ),
                              child: const Text('Logout'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.logout, size: 20),
                  tooltip: 'Logout',
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4),
          fontWeight: FontWeight.bold,
          letterSpacing: 1.0,
        ),
      ),
    );
  }

  Widget _buildMenuItem(
    BuildContext context,
    int index,
    String title,
    IconData icon,
  ) {
    final isActive = selectedIndex == index;
    final color = isActive
        ? AppColors.primary
        : Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6);
    final bgColor = isActive
        ? AppColors.primary.withValues(alpha: 0.1)
        : Colors.transparent;

    return Container(
      margin: const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(icon, color: color, size: 20),
        title: Text(
          title,
          style: TextStyle(
            color: color,
            fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
            fontSize: 14,
          ),
        ),
        dense: true,
        horizontalTitleGap: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        onTap: () => onItemSelected(index),
      ),
    );
  }
}
