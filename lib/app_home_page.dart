import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers/theme_provider.dart';

class AppHomePage extends ConsumerStatefulWidget {
  const AppHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<AppHomePage> createState() => _AppHomePageState();
}

class _AppHomePageState extends ConsumerState<AppHomePage> {
  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(
              themeMode == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: () {
              ref.read(themeProvider.notifier).toggle();
            },
          ),
        ],
      ),
      body: const Center(child: Text('Welcome to ik-Pharma!')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Welcome to ik-Pharma!'),
                content: const Text(
                  'The Premium Pharmacy management system in the cloud. \nWe are under construction. \nVisit some time later to test us out.',
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
        tooltip: 'Info',
        child: const Icon(Icons.info),
      ),
    );
  }
}
