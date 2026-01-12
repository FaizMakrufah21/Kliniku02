import 'package:flutter/material.dart';
import 'pilih_dokter_screen.dart';

class PilihPoliScreen extends StatelessWidget {
  /// If true, shows header with back button (for push navigation)
  /// If false, integrates into sidebar layout without header
  final bool showHeader;

  const PilihPoliScreen({super.key, this.showHeader = false});

  static const Color _primaryColor = Color(0xFF2E7B99);
  static const Color _backgroundColor = Color(0xFFF6F7F8);
  static const Color _cardColor = Colors.white;
  static const Color _textSubColor = Color(0xFF5A7E8C);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            if (showHeader) _buildHeader(context),
            Expanded(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    padding: EdgeInsets.only(
                      top: 72, // Space for sticky search
                      bottom: 24,
                      left: 16,
                      right: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Section Title
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 12,
                          ),
                          child: Text(
                            'KATEGORI LAYANAN',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: _textSubColor,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                        _buildDepartmentGrid(context),
                      ],
                    ),
                  ),
                  // Sticky Search Bar
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: _backgroundColor,
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: _buildSearchBar(),
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

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 16, 16, 8),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.chevron_left,
              color: _primaryColor,
              size: 28,
            ),
            style: IconButton.styleFrom(
              backgroundColor: Colors.transparent,
              padding: EdgeInsets.zero,
              minimumSize: const Size(40, 40),
            ),
          ),
          const Expanded(
            child: Text(
              'Pilih Poli',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.5,
              ),
            ),
          ),
          const SizedBox(width: 40), // Balance the back button
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Cari poli atau dokter...',
          hintStyle: const TextStyle(color: _textSubColor, fontSize: 14),
          prefixIcon: const Icon(Icons.search, color: _textSubColor),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 14),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: _primaryColor, width: 2),
          ),
        ),
      ),
    );
  }

  Widget _buildDepartmentGrid(BuildContext context) {
    final departments = [
      _DepartmentItem('Umum', 'General', Icons.monitor_heart),
      _DepartmentItem('Gigi', 'Dental', Icons.masks),
      _DepartmentItem('Anak', 'Pediatrics', Icons.child_care),
      _DepartmentItem('Mata', 'Eyes', Icons.visibility),
      _DepartmentItem('Jantung', 'Heart', Icons.favorite),
      _DepartmentItem('Saraf', 'Neurology', Icons.psychology),
      _DepartmentItem('THT', 'ENT', Icons.hearing),
      _DepartmentItem('Kulit', 'Skin', Icons.clean_hands),
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.0,
      ),
      itemCount: departments.length,
      itemBuilder: (context, index) {
        final dept = departments[index];
        return _buildDepartmentCard(
          context,
          dept.title,
          dept.subtitle,
          dept.icon,
        );
      },
    );
  }

  Widget _buildDepartmentCard(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
  ) {
    return Container(
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
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Navigate to doctor selection for this poli
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    PilihDokterScreen(poliName: title, poliSubtitle: subtitle),
              ),
            );
          },
          borderRadius: BorderRadius.circular(16),
          splashColor: _primaryColor.withValues(alpha: 0.1),
          highlightColor: _primaryColor.withValues(alpha: 0.05),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: _primaryColor.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, size: 28, color: _primaryColor),
                ),
                const SizedBox(height: 12),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 12, color: _textSubColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DepartmentItem {
  final String title;
  final String subtitle;
  final IconData icon;

  _DepartmentItem(this.title, this.subtitle, this.icon);
}
