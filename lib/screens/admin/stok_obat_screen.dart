import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class StokObatScreen extends StatefulWidget {
  const StokObatScreen({super.key});

  @override
  State<StokObatScreen> createState() => _StokObatScreenState();
}

class _StokObatScreenState extends State<StokObatScreen> {
  String _selectedFilter = 'Semua';

  final List<String> _filters = [
    'Semua',
    'Antibiotik',
    'Analgetik',
    'Vitamin',
    'Sirup',
  ];

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
              _buildSearchAndAction(context),
              const SizedBox(height: 24),
              _buildSummarySection(context, isDesktop),
              const SizedBox(height: 24),
              _buildFilters(context),
              const SizedBox(height: 16),
              _buildMedicineListHeader(context),
              const SizedBox(height: 16),
              _buildMedicineList(context),
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
                    'Stok Obat',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (isDesktop)
                    Text(
                      'Kelola inventaris obat klinik',
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

  Widget _buildSearchAndAction(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return Row(
            children: [
              Expanded(flex: 2, child: _buildSearchField(context)),
              const SizedBox(width: 16),
              _buildAddButton(context),
            ],
          );
        }
        return Column(
          children: [
            _buildSearchField(context),
            const SizedBox(height: 16),
            SizedBox(width: double.infinity, child: _buildAddButton(context)),
          ],
        );
      },
    );
  }

  Widget _buildSearchField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Cari kode atau nama obat...',
        hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4),
        ),
        prefixIcon: Icon(Icons.search, color: AppColors.primary),
        filled: true,
        fillColor: Theme.of(context).cardTheme.color,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Theme.of(context).dividerTheme.color ?? Colors.grey[200]!,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 14),
      ),
    );
  }

  Widget _buildAddButton(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.add, color: Colors.white),
      label: const Text(
        'Tambah Obat',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 0,
      ),
    );
  }

  Widget _buildSummarySection(BuildContext context, bool isDesktop) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'RINGKASAN',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(
              context,
            ).colorScheme.onSurface.withValues(alpha: 0.5),
          ),
        ),
        const SizedBox(height: 16),
        LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return Row(
                children: [
                  Expanded(
                    child: _buildSummaryCard(
                      context,
                      icon: Icons.medication,
                      iconColor: AppColors.primary,
                      label: 'Total Jenis Obat',
                      count: '1,240',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildSummaryCard(
                      context,
                      icon: Icons.warning_amber,
                      iconColor: AppColors.amber,
                      label: 'Stok Menipis',
                      count: '12',
                      isWarning: true,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildSummaryCard(
                      context,
                      icon: Icons.event_busy,
                      iconColor: AppColors.red,
                      label: 'Kadaluarsa',
                      count: '5',
                      isError: true,
                    ),
                  ),
                ],
              );
            }
            return Column(
              children: [
                _buildSummaryCard(
                  context,
                  icon: Icons.medication,
                  iconColor: AppColors.primary,
                  label: 'Total Jenis Obat',
                  count: '1,240',
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: _buildSummaryCard(
                        context,
                        icon: Icons.warning_amber,
                        iconColor: AppColors.amber,
                        label: 'Stok Menipis',
                        count: '12',
                        isWarning: true,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildSummaryCard(
                        context,
                        icon: Icons.event_busy,
                        iconColor: AppColors.red,
                        label: 'Kadaluarsa',
                        count: '5',
                        isError: true,
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildSummaryCard(
    BuildContext context, {
    required IconData icon,
    required Color iconColor,
    required String label,
    required String count,
    bool isWarning = false,
    bool isError = false,
  }) {
    Color? borderAccent;
    if (isWarning) borderAccent = AppColors.amber;
    if (isError) borderAccent = AppColors.red;

    return Card(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: borderAccent != null
            ? BoxDecoration(
                border: Border(left: BorderSide(color: borderAccent, width: 4)),
              )
            : null,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: iconColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: iconColor, size: 24),
            ),
            const SizedBox(height: 12),
            Text(
              label,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(
                  context,
                ).colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              count,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilters(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: _filters.map((filter) {
          final isSelected = _selectedFilter == filter;
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ChoiceChip(
              label: Text(filter),
              selected: isSelected,
              onSelected: (selected) {
                setState(() {
                  _selectedFilter = filter;
                });
              },
              backgroundColor: Theme.of(context).cardTheme.color,
              selectedColor: AppColors.primary,
              labelStyle: TextStyle(
                color: isSelected
                    ? Colors.white
                    : Theme.of(
                        context,
                      ).colorScheme.onSurface.withValues(alpha: 0.7),
                fontWeight: FontWeight.w500,
              ),
              side: BorderSide(
                color: isSelected
                    ? Colors.transparent
                    : Theme.of(context).dividerTheme.color ?? Colors.grey[200]!,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildMedicineListHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'DAFTAR OBAT',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(
              context,
            ).colorScheme.onSurface.withValues(alpha: 0.5),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.filter_list, size: 18),
          label: const Text('Filter'),
          style: TextButton.styleFrom(foregroundColor: AppColors.primary),
        ),
      ],
    );
  }

  Widget _buildMedicineList(BuildContext context) {
    return Column(
      children: [
        _buildMedicineCard(
          context,
          code: 'OBT-001',
          name: 'Amoxicillin 500mg',
          category: 'Antibiotik',
          categoryColor: AppColors.blue,
          price: 'Rp 15.000',
          unit: 'per Strip',
          stock: 150,
        ),
        const SizedBox(height: 12),
        _buildMedicineCard(
          context,
          code: 'OBT-045',
          name: 'Paracetamol Syrup',
          category: 'Analgetik',
          categoryColor: AppColors.purple,
          price: 'Rp 25.000',
          unit: 'per Botol',
          stock: 3,
          isLowStock: true,
        ),
        const SizedBox(height: 12),
        _buildMedicineCard(
          context,
          code: 'OBT-092',
          name: 'Salep Kulit 5g',
          category: 'Topikal',
          categoryColor: AppColors.pink,
          price: 'Rp 12.000',
          unit: 'per Tube',
          stock: 42,
          isExpired: true,
        ),
        const SizedBox(height: 12),
        _buildMedicineCard(
          context,
          code: 'OBT-104',
          name: 'Vitamin C 500mg',
          category: 'Vitamin',
          categoryColor: AppColors.emerald,
          price: 'Rp 45.000',
          unit: 'per Botol',
          stock: 200,
        ),
      ],
    );
  }

  Widget _buildMedicineCard(
    BuildContext context, {
    required String code,
    required String name,
    required String category,
    required Color categoryColor,
    required String price,
    required String unit,
    required int stock,
    bool isLowStock = false,
    bool isExpired = false,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: isLowStock ? AppColors.red.withValues(alpha: 0.05) : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: isLowStock
              ? AppColors.red.withValues(alpha: 0.3)
              : Theme.of(context).dividerTheme.color ?? Colors.grey[200]!,
        ),
      ),
      child: Column(
        children: [
          if (isLowStock)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 4),
              color: AppColors.red.withValues(alpha: 0.1),
              child: const Text(
                'STOK MENIPIS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: AppColors.red,
                  letterSpacing: 1,
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                code,
                                style: Theme.of(context).textTheme.bodySmall
                                    ?.copyWith(
                                      fontFamily: 'monospace',
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface
                                          .withValues(alpha: 0.5),
                                    ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: categoryColor.withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  category,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: categoryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                name,
                                style: Theme.of(context).textTheme.titleMedium
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              if (isExpired) ...[
                                const SizedBox(width: 8),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.red.withValues(alpha: 0.1),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: const Text(
                                    'EXP',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          price,
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: isLowStock || isExpired
                                    ? null
                                    : AppColors.primary,
                              ),
                        ),
                        Text(
                          unit,
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurface.withValues(alpha: 0.5),
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Divider(height: 1, color: Theme.of(context).dividerTheme.color),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: isLowStock
                            ? Colors.white
                            : Theme.of(
                                context,
                              ).colorScheme.onSurface.withValues(alpha: 0.05),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            isLowStock
                                ? Icons.warning_amber
                                : Icons.inventory_2_outlined,
                            size: 16,
                            color: isLowStock
                                ? AppColors.red
                                : Theme.of(context).colorScheme.onSurface
                                      .withValues(alpha: 0.6),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            '$stock',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: isLowStock ? AppColors.red : null,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'Stok',
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(
                                  color: isLowStock
                                      ? AppColors.red.withValues(alpha: 0.8)
                                      : Theme.of(context).colorScheme.onSurface
                                            .withValues(alpha: 0.5),
                                ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.history, size: 20),
                          onPressed: () {},
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withValues(alpha: 0.4),
                          tooltip: 'Riwayat',
                        ),
                        IconButton(
                          icon: const Icon(Icons.edit, size: 20),
                          onPressed: () {},
                          color: AppColors.primary,
                          tooltip: 'Edit',
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, size: 20),
                          onPressed: () {},
                          color: AppColors.red,
                          tooltip: 'Hapus',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
