import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'features/dashboard/presentation/pages/dashboard_page.dart';

class AppHomePage extends ConsumerWidget {
  const AppHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const DashboardPage();
  }
}
