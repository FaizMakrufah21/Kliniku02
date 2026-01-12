import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/login_page.dart';

void main() {
  runApp(const KlinikuApp());
}

class KlinikuApp extends StatelessWidget {
  const KlinikuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kliniku 02',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const LoginPage(),
    );
  }
}
