import 'package:flutter/material.dart';

class Poli {
  final int id;
  final String name;
  final String description;
  final IconData icon;
  final Color color;

  const Poli({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.color,
  });
}

// Dummy Data
final List<Poli> dummyPoliList = [
  const Poli(
    id: 1,
    name: 'Poli Umum',
    description: 'Layanan kesehatan umum dan dasar',
    icon: Icons.medical_services, // Stethoscope proxy
    color: Colors.blue,
  ),
  const Poli(
    id: 2,
    name: 'Poli Gigi',
    description: 'Perawatan kesehatan gigi dan mulut',
    icon: Icons.monitor_heart, // Dentistry proxy
    color: Colors.teal,
  ),
  const Poli(
    id: 3,
    name: 'Poli Anak',
    description: 'Spesialis kesehatan bayi dan anak',
    icon: Icons.child_care, // Pediatrics proxy
    color: Colors.pink,
  ),
  const Poli(
    id: 4,
    name: 'Poli Kandungan',
    description: 'Layanan ibu hamil dan reproduksi',
    icon: Icons.pregnant_woman,
    color: Colors.purple,
  ),
  const Poli(
    id: 5,
    name: 'Poli Mata',
    description: 'Pemeriksaan dan kesehatan mata',
    icon: Icons.remove_red_eye, // Ophthalmology proxy
    color: Colors.orange,
  ),
];
