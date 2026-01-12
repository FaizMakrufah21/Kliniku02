import 'package:flutter/material.dart';
import '../screens/login_page.dart';

class CustomerSidebar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const CustomerSidebar({
    super.key,
    this.selectedIndex = 0,
    required this.onItemSelected,
  });

  static const Color _primaryColor = Color(0xFF2E7B99);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 256,
      color: Colors.white,
      child: Column(
        children: [
          // Header
          Container(
            height: 64,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[200]!, width: 1),
              ),
            ),
            child: const Row(
              children: [
                Icon(Icons.local_hospital, color: _primaryColor, size: 32),
                SizedBox(width: 8),
                Text(
                  'KLINIKU',
                  style: TextStyle(
                    color: _primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                  ),
                ),
              ],
            ),
          ),
          // Menu
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12),
              children: [
                _buildSectionHeader(context, 'MENU UTAMA'),
                _buildMenuItem(context, 0, 'Home', Icons.home),
                _buildMenuItem(context, 1, 'Schedule', Icons.calendar_today),
                _buildMenuItem(
                  context,
                  2,
                  'Messages',
                  Icons.chat_bubble_outline,
                  showBadge: true,
                ),
                _buildMenuItem(context, 3, 'Profile', Icons.person),
                const SizedBox(height: 32),
                _buildSectionHeader(context, 'LAYANAN'),
                _buildMenuItem(
                  context,
                  4,
                  'Reservasi Dokter',
                  Icons.calendar_month,
                ),
                _buildMenuItem(context, 5, 'Telekonsul', Icons.videocam),
                _buildMenuItem(context, 6, 'Beli Obat', Icons.medication),
              ],
            ),
          ),
          // User Profile with Logout
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey[200]!, width: 1),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey[200]!),
                  ),
                  child: ClipOval(
                    child: Image.network(
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuAY0DVIQYVNvOA3KJUU0-C40uGk2L4RpxjMGZRAUx7Ws8w_h-aJv935CgQ5L3NxsRrqNxWkIoxCr8frc8-OG6-etoMo8hm6qYM5RW20hjUK22GZs6ws1IGeuAjRL_x3NDC_EUb0byhEXB7cw_mEMlS0NT3YNpl1u5Cm_USz7ilPzKbXOgQ79tKNY9vDPG04KT8x3q8BSAWVdNV_bzqYiFjy7aHZkLTC-TVx9IsyfuqRZHnvIqNQLIk8msMV7D8Y95iRWbzudiOWBLQ',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(
                        Icons.person,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'John Doe',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'john.doe@email.com',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
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
                  icon: Icon(Icons.logout, size: 20, color: Colors.grey[600]),
                  tooltip: 'Logout',
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
        style: TextStyle(
          color: Colors.grey[500],
          fontWeight: FontWeight.bold,
          fontSize: 11,
          letterSpacing: 1.0,
        ),
      ),
    );
  }

  Widget _buildMenuItem(
    BuildContext context,
    int index,
    String title,
    IconData icon, {
    bool showBadge = false,
  }) {
    final isActive = selectedIndex == index;
    final color = isActive ? _primaryColor : Colors.grey[600]!;
    final bgColor = isActive
        ? _primaryColor.withValues(alpha: 0.1)
        : Colors.transparent;

    return Container(
      margin: const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Stack(
          clipBehavior: Clip.none,
          children: [
            Icon(icon, color: color, size: 20),
            if (showBadge)
              Positioned(
                right: -4,
                top: -4,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                ),
              ),
          ],
        ),
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
