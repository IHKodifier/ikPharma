import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityFeedWidget extends StatelessWidget {
  const ActivityFeedWidget({super.key});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Activity',
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View All',
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildActivityItem(
              context,
              icon: Icons.shopping_cart,
              iconColor: Colors.blue.shade100,
              iconTextColor: Colors.blue.shade700,
              title: 'New PO #1234 created',
              subtitle: 'By John Doe • 5 min ago',
            ),
            const Divider(height: 20),
            _buildActivityItem(
              context,
              icon: Icons.payments,
              iconColor: Colors.green.shade100,
              iconTextColor: Colors.green.shade700,
              title: 'Invoice #5678 paid',
              subtitle: 'By Finance Team • 12 min ago',
            ),
            const Divider(height: 20),
            _buildActivityItem(
              context,
              icon: Icons.sync_alt,
              iconColor: Colors.orange.shade100,
              iconTextColor: Colors.orange.shade700,
              title: 'Stock transfer completed',
              subtitle: 'Regional → Store A • 25 min ago',
            ),
            const Divider(height: 20),
            _buildActivityItem(
              context,
              icon: Icons.person_add,
              iconColor: Colors.purple.shade100,
              iconTextColor: Colors.purple.shade700,
              title: 'New employee onboarded',
              subtitle: 'HR Manager • 1 hour ago',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityItem(
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
        const SizedBox(width: 12),
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
              const SizedBox(height: 2),
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
