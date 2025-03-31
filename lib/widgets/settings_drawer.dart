import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_20250401/widgets/about_section.dart';
import 'package:todo_20250401/widgets/settings_header.dart';
import 'package:todo_20250401/widgets/theme_settings.dart';

class SettingsDrawer extends ConsumerWidget {
  const SettingsDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const SettingsHeader(),
            Expanded(
              child: ListView(
                children: const [ThemeSettings(), Divider(), AboutSection()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
