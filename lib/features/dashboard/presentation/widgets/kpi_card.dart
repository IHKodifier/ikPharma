import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KpiCard extends StatelessWidget {
  final String title;
  final String value;
  final String? trend;
  final bool isTrendPositive;
  final String? trendText;
  final IconData? icon;
  final Color? iconColor;

  const KpiCard({
    super.key,
    required this.title,
    required this.value,
    this.trend,
    this.isTrendPositive = true,
    this.trendText,
    this.icon,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: theme.dividerColor),
      ),
      color: colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (icon != null)
                  Icon(
                    icon,
                    size: 20,
                    color:
                        iconColor ??
                        colorScheme.onSurfaceVariant.withOpacity(0.5),
                  ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              value,
              style: GoogleFonts.inter(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
            ),
            if (trend != null) ...[
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    isTrendPositive ? Icons.trending_up : Icons.trending_down,
                    size: 16,
                    color: isTrendPositive ? Colors.green : Colors.red,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    trend!,
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: isTrendPositive ? Colors.green : Colors.red,
                    ),
                  ),
                  if (trendText != null) ...[
                    const SizedBox(width: 4),
                    Text(
                      trendText!,
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
