import 'package:flutter/material.dart';
import '../../../config/theme.dart';

class QuotaWidget extends StatelessWidget {
  final int currentUsage;
  final int maxQuota;
  final String label;

  const QuotaWidget({
    super.key,
    required this.currentUsage,
    required this.maxQuota,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final percentage = maxQuota > 0 ? (currentUsage / maxQuota * 100).clamp(0.0, 100.0) : 0.0;
    final isNearLimit = percentage >= 80;
    final isCritical = percentage >= 95;

    Color getProgressColor() {
      if (isCritical) return AppColors.error;
      if (isNearLimit) return AppColors.warning;
      return AppColors.success;
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.border,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with usage stats
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Utilizzo Quota',
                style: AppTextStyles.bodySmall.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              Row(
                children: [
                  Text(
                    '$currentUsage',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: getProgressColor(),
                    ),
                  ),
                  Text(
                    ' / $maxQuota',
                    style: AppTextStyles.bodySmall.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Progress Bar
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              height: 8,
              child: LinearProgressIndicator(
                value: percentage / 100,
                backgroundColor: AppColors.border,
                valueColor: AlwaysStoppedAnimation<Color>(getProgressColor()),
              ),
            ),
          ),

          const SizedBox(height: 8),

          // Percentage and warning
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${percentage.toStringAsFixed(1)}% utilizzato',
                style: AppTextStyles.caption.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              if (isNearLimit)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: getProgressColor().withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        isCritical ? Icons.error : Icons.warning,
                        size: 12,
                        color: getProgressColor(),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        isCritical ? 'Limite raggiunto' : 'Vicino al limite',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: getProgressColor(),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
