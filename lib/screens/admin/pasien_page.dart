import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../models/pasien.dart';

class PasienPage extends StatelessWidget {
  const PasienPage({super.key});

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
              // Breadcrumb & Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Dashboard',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withValues(alpha: 0.5),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(
                        Icons.chevron_right,
                        size: 16,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.5),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Pasien',
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Data Pasien Klinik',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Search & Add Section
              Column(
                children: [
                  // Search Bar
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Cari Nama atau NIK...',
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      filled: true,
                      fillColor: Theme.of(context).cardTheme.color,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Add Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      label: const Text('Registrasi Pasien'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 4,
                        shadowColor: AppColors.primary.withValues(alpha: 0.3),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Data Table Card
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        headingRowColor: WidgetStateProperty.all(
                          isDark
                              ? const Color(0xFF152329)
                              : const Color(0xFFF9FAFB),
                        ),
                        dataRowMinHeight: 72,
                        dataRowMaxHeight: 72,
                        horizontalMargin: 24,
                        columnSpacing: 24,
                        columns: [
                          DataColumn(
                            label: Text('NO', style: _headerStyle(context)),
                          ),
                          DataColumn(
                            label: Text(
                              'NAMA PASIEN',
                              style: _headerStyle(context),
                            ),
                          ),
                          DataColumn(
                            label: Text('NIK', style: _headerStyle(context)),
                          ),
                          DataColumn(
                            label: Text('NO. HP', style: _headerStyle(context)),
                          ),
                          DataColumn(
                            label: Text(
                              'TERAKHIR BERKUNJUNG',
                              style: _headerStyle(context),
                            ),
                          ),
                          DataColumn(
                            label: Text('AKSI', style: _headerStyle(context)),
                          ),
                        ],
                        rows: dummyPasienList.map((pasien) {
                          return DataRow(
                            cells: [
                              DataCell(
                                Text(
                                  '${pasien.id}',
                                  style: _cellStyle(context),
                                ),
                              ),
                              DataCell(
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      pasien.name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Container(
                                          width: 8,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            color:
                                                pasien.status ==
                                                    PasienStatus.active
                                                ? AppColors.emerald
                                                : AppColors.amber,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          pasien.status == PasienStatus.active
                                              ? 'Aktif'
                                              : 'Non-Aktif',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color:
                                                pasien.status ==
                                                    PasienStatus.active
                                                ? AppColors.emerald
                                                : AppColors.amber,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              DataCell(
                                Text(
                                  pasien.nik,
                                  style: _cellStyle(
                                    context,
                                  ).copyWith(fontFamily: 'Monospace'),
                                ),
                              ),
                              DataCell(
                                Text(pasien.phone, style: _cellStyle(context)),
                              ),
                              DataCell(
                                Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_today,
                                      size: 14,
                                      color: Theme.of(context).disabledColor,
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      pasien.lastVisit,
                                      style: _cellStyle(context),
                                    ),
                                  ],
                                ),
                              ),
                              DataCell(
                                IconButton(
                                  icon: const Icon(Icons.more_vert),
                                  color: Theme.of(context).disabledColor,
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                    // Pagination Footer
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Theme.of(context).dividerTheme.color!,
                          ),
                        ),
                        color: isDark
                            ? const Color(0xFF152329).withValues(alpha: 0.5)
                            : const Color(0xFFF9FAFB),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Menampilkan 1 sampai ${dummyPasienList.length} dari 48 data',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _PaginationButton(
                                icon: Icons.chevron_left,
                                disabled: true,
                                onTap: () {},
                              ),
                              const SizedBox(width: 8),
                              _PaginationButton(
                                label: '1',
                                isActive: true,
                                onTap: () {},
                              ),
                              const SizedBox(width: 8),
                              _PaginationButton(label: '2', onTap: () {}),
                              const SizedBox(width: 8),
                              _PaginationButton(label: '3', onTap: () {}),
                              const SizedBox(width: 8),
                              const Text('...'),
                              const SizedBox(width: 8),
                              _PaginationButton(label: '8', onTap: () {}),
                              const SizedBox(width: 8),
                              _PaginationButton(
                                icon: Icons.chevron_right,
                                onTap: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }

  TextStyle _headerStyle(BuildContext context) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
    );
  }

  TextStyle _cellStyle(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
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
                'Kliniku Admin',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  // Using local asset logic or placeholder if network fails
                  color: Colors.grey,
                ),
                child: ClipOval(
                  child: Image.network(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuCjRA-1GIEVf0PngpjyjK-6u85rkTEe019oqHfH9PPKberDNVF-GJpXoUWh85YMvzAvjvz8SdL8FppZey6XnGkcpg18g7zlYJCCWDQMEiEY4F0nSlq8qU4Wq_7r4fyOk0uXyc5dQJH0L4jJuM-4kC02wGlDAk7mMTWfR6wm_EzAiPcz4uYCnOvuyl0wIvmFXMwH05_7Vrao6mprk8duenJes3tIeI4O3VQ-Jgrny2e6olD7yCUPmOCqEQDFeQ8ysZZ6yYxRZ1haMZk',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.person, color: Colors.white),
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

class _PaginationButton extends StatelessWidget {
  final String? label;
  final IconData? icon;
  final bool isActive;
  final bool disabled;
  final VoidCallback onTap;

  const _PaginationButton({
    this.label,
    this.icon,
    this.isActive = false,
    this.disabled = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            label!,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
      );
    }

    return InkWell(
      onTap: disabled ? null : onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          border: Border.all(color: Theme.of(context).dividerTheme.color!),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: icon != null
              ? Icon(
                  icon,
                  size: 18,
                  color: disabled
                      ? Theme.of(context).disabledColor
                      : Theme.of(context).colorScheme.onSurface,
                )
              : Text(
                  label!,
                  style: TextStyle(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.7),
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
        ),
      ),
    );
  }
}
