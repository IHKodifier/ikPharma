import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../providers/theme_provider.dart';
import '../../../../providers/user_provider.dart';
import '../widgets/sidebar_navigation.dart';
import '../widgets/kpi_card.dart';
import '../widgets/quick_action_card.dart';
import '../widgets/sales_chart_widget.dart';
import '../widgets/critical_alerts_widget.dart';
import '../widgets/activity_feed_widget.dart';

import '../../../../widgets/ik_app_bar.dart';

class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {
  bool _isSidebarCollapsed = false;

  void _toggleSidebar() {
    setState(() {
      _isSidebarCollapsed = !_isSidebarCollapsed;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final user = ref.watch(userProvider);

    return Scaffold(
      backgroundColor: colorScheme.surfaceContainerLowest,
      appBar: IkAppBar(
        isSidebarCollapsed: _isSidebarCollapsed,
        onToggleSidebar: _toggleSidebar,
      ),
      body: Row(
        children: [
          // Sidebar
          if (MediaQuery.of(context).size.width > 900)
            SidebarNavigation(
              isCollapsed: _isSidebarCollapsed,
              onToggleCollapse: _toggleSidebar,
            ),

          // Main Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Welcome Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning, ${user?.firstName ?? 'User'}!',
                            style: GoogleFonts.inter(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: colorScheme.onSurface,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Here's your pharmacy's performance summary for today.",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme.surface,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: theme.dividerColor),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              size: 16,
                              color: colorScheme.onSurfaceVariant,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Last 7 Days',
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                color: colorScheme.onSurface,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 16,
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Row 1: Revenue & Operations
                  Row(
                    children: [
                      Expanded(
                        child: KpiCard(
                          title: "Today's Revenue",
                          value: '\$12,482',
                          trend: '+5.2%',
                          isTrendPositive: true,
                          trendText: 'vs yesterday',
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: KpiCard(
                          title: 'Active Transactions',
                          value: '8',
                          trend: '3 POS sessions',
                          isTrendPositive: true,
                          icon: Icons.point_of_sale,
                          iconColor: Colors.blue,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: KpiCard(
                          title: 'Pending Approvals',
                          value: '12',
                          trend: '5 urgent',
                          isTrendPositive: false,
                          icon: Icons.approval,
                          iconColor: Colors.orange,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: KpiCard(
                          title: 'System Health',
                          value: '99.8%',
                          trend: 'All systems operational',
                          isTrendPositive: true,
                          icon: Icons.cloud_done,
                          iconColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Row 2: Inventory & Supply Chain
                  Row(
                    children: [
                      Expanded(
                        child: KpiCard(
                          title: 'Low Stock Items',
                          value: '23',
                          trend: '\$8,450 at risk',
                          isTrendPositive: false,
                          icon: Icons.inventory_2,
                          iconColor: Colors.red,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: KpiCard(
                          title: 'Expiring Soon',
                          value: '15',
                          trend: 'Next 30 days',
                          isTrendPositive: false,
                          icon: Icons.schedule,
                          iconColor: Colors.orange,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: KpiCard(
                          title: 'Open POs',
                          value: '7',
                          trend: '\$45,230 total',
                          isTrendPositive: true,
                          icon: Icons.shopping_cart,
                          iconColor: Colors.blue,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: KpiCard(
                          title: 'In-Transit',
                          value: '4',
                          trend: 'Transfers pending',
                          isTrendPositive: true,
                          icon: Icons.local_shipping,
                          iconColor: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Quick Actions
                  Text(
                    'Quick Actions',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: QuickActionCard(
                          title: 'Start POS Session',
                          icon: Icons.point_of_sale,
                          onTap: () {},
                          isPrimary: true,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: QuickActionCard(
                          title: 'Create Requisition',
                          icon: Icons.request_quote,
                          onTap: () {},
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: QuickActionCard(
                          title: 'Receive Goods',
                          icon: Icons.inventory,
                          onTap: () {},
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: QuickActionCard(
                          title: 'Process Payroll',
                          icon: Icons.attach_money,
                          onTap: () {},
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: QuickActionCard(
                          title: 'View Reports',
                          icon: Icons.bar_chart,
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Charts and Activity
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            SalesChartWidget(),
                            const SizedBox(height: 24),
                            ActivityFeedWidget(),
                          ],
                        ),
                      ),
                      const SizedBox(width: 24),
                      const Expanded(flex: 1, child: CriticalAlertsWidget()),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
