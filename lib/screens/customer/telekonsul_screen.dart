import 'package:flutter/material.dart';

class TelekonsulScreen extends StatelessWidget {
  const TelekonsulScreen({super.key});

  static const Color _primaryColor = Color(0xFF2E7B99);
  static const Color _backgroundColor = Color(0xFFF6F7F8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              _buildBanner(),
              _buildCategorySection(),
              _buildDoctorList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Telekonsultasi',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                'Konsultasi dokter dari rumah',
                style: TextStyle(fontSize: 14, color: Color(0xFF5A7E8C)),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.history, color: _primaryColor),
            tooltip: 'Riwayat Konsultasi',
          ),
        ],
      ),
    );
  }

  Widget _buildBanner() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: _primaryColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: _primaryColor.withValues(alpha: 0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Gratis Ongkir Obat!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Khusus untuk konsultasi hari ini. Obat diantar langsung ke rumah.',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white.withValues(alpha: 0.9),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: _primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                  child: const Text('Cek Promo'),
                ),
              ],
            ),
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.local_shipping,
              size: 40,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategorySection() {
    final categories = [
      {'icon': Icons.medical_services, 'label': 'Umum'},
      {'icon': Icons.child_care, 'label': 'Anak'},
      {'icon': Icons.pregnant_woman, 'label': 'Kandungan'},
      {'icon': Icons.psychology, 'label': 'Psikiater'},
      {'icon': Icons.favorite, 'label': 'Jantung'},
    ];

    return SizedBox(
      height: 110,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final cat = categories[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Icon(cat['icon'] as IconData, color: _primaryColor),
                ),
                const SizedBox(height: 8),
                Text(
                  cat['label'] as String,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildDoctorList() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Dokter Online',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(onPressed: () {}, child: const Text('Lihat Semua')),
            ],
          ),
          const SizedBox(height: 12),
          _buildDoctorCard(
            name: 'Dr. Budi Santoso, Sp.PD',
            specialty: 'Spesialis Penyakit Dalam',
            experience: '12 tahun',
            rating: 4.8,
            price: 'Rp 50.000',
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuBEziUE5rMTJSOY0bE1PqvCJA2cHjeOPY535mieeK5TnNLuvvRXEKh_brdczUMuX8fpCwJADfg5dxj6w6Fvhl80CTYmW7ZfmijMhWQ1cAceKFiDc925dp4TmR0sGECvhL-FzVgxNvmvCDzHyCQOpgHMD7oxe5kC79TkVg5187nfBbS4XidCeNT73dw-nbjiZMniyYaWb_7dc6wiCJVB10mKWc7ArCR19gSIxfJjF_XKjLg8eaU8ELMJZXO7KDjNUD0Q3-4_SrPX7Ic',
          ),
          const SizedBox(height: 12),
          _buildDoctorCard(
            name: 'Dr. Sarah Amalia',
            specialty: 'Dokter Umum',
            experience: '5 tahun',
            rating: 4.9,
            price: 'Rp 35.000',
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuA23LOQcQOxL7AVsK8eGq5jCKaHbkLe6j2QJ0K3r2X4OxqFnvA6NDGV8y-wQUrvjg4_y-FJLBwXRgLmUhtQSaPVlCJiB8XyjaghsUBz1f5IHh3WSMQ8p4HBYYrmHquf_NU4kfHBrJAwCVFT8UvEcCzLRTl_SkAOPbSGVsjRETu_9NlncmOSJALsrpw0w80Pj-3vTkD50najUJk-VKSMgKhuw04x8zvsOcgvlMwckCAcUrlPEWQrASA1-pntUo_ziLvcJiBNPx9s9iY',
          ),
          const SizedBox(height: 12),
          _buildDoctorCard(
            name: 'Dr. Michael Chen',
            specialty: 'Spesialis Anak',
            experience: '8 tahun',
            rating: 4.7,
            price: 'Rp 60.000',
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuDIuZ6yL-DWTWYpG2ismlSv1r5XnDBJjYRhYQTAXpXY0JK1gXIUZxS9wsDSnVdQE8OmaK1tIJ5JUuAnBTMYweN0Sw1sKW5WYzNZ7Jr98AV6t0YYwtsUeP-LDIUytIkhx0KqODKJG2ISccQZUQrK3dh93xIUKP03oOlhWyKCSLUcF89dd5x9TFmK_Ojo5vMJOcUWov7W3opz7-qRW20I_10CUJgMSYv28i-Q3EleP24qkkpHp7p5SD9O8OKx6N3LSV-LGfoAt5cI36A',
          ),
        ],
      ),
    );
  }

  Widget _buildDoctorCard({
    required String name,
    required String specialty,
    required String experience,
    required double rating,
    required String price,
    required String imageUrl,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
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
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[100],
            ),
            child: ClipOval(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.person, size: 40, color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        name,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.videocam, size: 12, color: Colors.green),
                          SizedBox(width: 4),
                          Text(
                            'Online',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  specialty,
                  style: const TextStyle(
                    fontSize: 13,
                    color: _primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.work_outline, size: 14, color: Colors.grey[500]),
                    const SizedBox(width: 4),
                    Text(
                      experience,
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    const SizedBox(width: 12),
                    const Icon(Icons.star, size: 14, color: Colors.amber),
                    const SizedBox(width: 4),
                    Text(
                      rating.toString(),
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Column(
            children: [
              Text(
                price,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: _primaryColor,
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: _primaryColor,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: const Size(0, 36),
                ),
                child: const Text('Chat'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
