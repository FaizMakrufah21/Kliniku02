import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

enum QueueStatus { selesai, proses, tunggu }

class QueueItem extends StatelessWidget {
  final String name;
  final String details;
  final QueueStatus status;
  final Color avatarColor;
  final Widget? avatarContent; // Text or Icon

  const QueueItem({
    super.key,
    required this.name,
    required this.details,
    required this.status,
    required this.avatarColor,
    this.avatarContent,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: avatarColor.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Center(
                child:
                    avatarContent ??
                    Icon(
                      Icons.person,
                      color: Theme.of(
                        context,
                      ).iconTheme.color?.withValues(alpha: 0.5),
                    ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    details,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withValues(alpha: 0.6),
                    ),
                  ),
                ],
              ),
            ),
            _buildStatusBadge(context),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusBadge(BuildContext context) {
    Color bgColor;
    Color textColor;
    String text;

    switch (status) {
      case QueueStatus.selesai:
        bgColor = AppColors.emerald.withValues(alpha: 0.1);
        textColor = AppColors.emerald;
        text = 'Selesai';
        break;
      case QueueStatus.proses:
        bgColor = AppColors.primary.withValues(alpha: 0.1);
        textColor = AppColors.primary;
        text = 'Proses';
        break;
      case QueueStatus.tunggu:
        bgColor = AppColors.amber.withValues(alpha: 0.1);
        textColor = AppColors.amber;
        text = 'Tunggu';
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: textColor.withValues(alpha: 0.2)),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
