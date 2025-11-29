import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CriticalAlertsWidget extends StatelessWidget {
  const CriticalAlertsWidget({super.key});

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
          children: [
            Text(
              'Critical Alerts',
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 20),
            _buildAlertItem(
              context,
              icon: Icons.priority_high,
              iconColor: Colors.red.shade100,
              iconTextColor: Colors.red,
              title: 'Ibuprofen - Low Stock',
              subtitle: 'Only 12 units remaining.',
            ),
            const Divider(height: 24),
            _buildAlertItem(
              context,
              icon: Icons.priority_high,
              iconColor: Colors.red.shade100,
              iconTextColor: Colors.red,
              title: 'Amoxicillin - Low Stock',
              subtitle: 'Only 8 units remaining.',
            ),
            const Divider(height: 24),
            _buildAlertItem(
              context,
              icon: Icons.notifications_active,
              iconColor: Colors.orange.shade100,
              iconTextColor: Colors.orange.shade800,
              title: 'Batch #XYZ Expiring Soon',
              subtitle: 'Expires in 3 days.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAlertItem(
    BuildContext context, {
    required IconData icon,
    required Color iconColor,
    required Color iconTextColor,
    required String title,
    required String subtitle,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(color: iconColor, shape: BoxShape.circle),
          child: Icon(icon, color: iconTextColor, size: 20),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: GoogleFonts.inter(
                  fontSize: 12,
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
