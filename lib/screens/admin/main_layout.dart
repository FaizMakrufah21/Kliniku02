import 'package:flutter/material.dart';
import '../../widgets/sidebar.dart';
import 'dashboard_screen.dart';
import 'pegawai_page.dart';
import 'poli_page.dart';
import 'pasien_page.dart';
import 'antrian_page.dart';
import 'laporan_page.dart';
import 'stok_obat_screen.dart';
import 'setting_page.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  void _onMenuSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Mapping Sidebar index to Page widget
  // 0: Dashboard
  // 1: Poli
  // 2: Pegawai
  // 3: Pasien
  // 4: Antrian
  // 4: Antrian
  // 5: Laporan
  // 6: Setting
  Widget _getPage(int index) {
    if (index == 0) {
      return const DashboardPage();
    }
    if (index == 1) {
      return const PoliPage();
    }
    if (index == 2) {
      return const PegawaiPage();
    }
    if (index == 3) {
      return const PasienPage();
    }
    if (index == 4) {
      return const AntrianPage();
    }
    if (index == 5) {
      return const LaporanPage();
    }
    if (index == 6) {
      return const StokObatScreen();
    }
    if (index == 7) {
      return const SettingPage();
    }

    return Center(child: Text('Page Index $index Coming Soon'));
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 1024;

    return Scaffold(
      drawer: !isDesktop
          ? Drawer(
              child: Sidebar(
                selectedIndex: _selectedIndex,
                onItemSelected: (index) {
                  _onMenuSelected(index);
                  Navigator.pop(context); // Close drawer on mobile
                },
              ),
            )
          : null,
      body: Row(
        children: [
          if (isDesktop)
            Sidebar(
              selectedIndex: _selectedIndex,
              onItemSelected: _onMenuSelected,
            ),
          Expanded(child: _getPage(_selectedIndex)),
        ],
      ),
    );
  }
}
