import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_20250401/providers/theme_state.dart';
import 'package:todo_20250401/widgets/settings_drawer.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: themeMode,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  IconData get _settingsIcon {
    if (Platform.isWindows || Platform.isLinux) {
      return Icons.settings;
    } else if (Platform.isMacOS) {
      return Icons.settings_outlined;
    } else {
      return Icons.more_vert;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(_settingsIcon),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              tooltip: '設定',
            ),
          ),
        ],
      ),
      endDrawer: const SettingsDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current theme mode: ${ref.watch(themeModeProvider).name}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
