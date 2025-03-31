import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_20250401/providers/theme_state.dart';
import 'package:todo_20250401/l10n/app_localizations.dart';

class ThemeModeDrawer extends ConsumerWidget {
  const ThemeModeDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    final l10n = AppLocalizations.of(context)!;

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  themeMode == ThemeMode.system
                      ? Icons.brightness_auto
                      : themeMode == ThemeMode.light
                      ? Icons.brightness_5
                      : Icons.brightness_4,
                  size: 48,
                ),
                const SizedBox(height: 16),
                Text(l10n.themeSettings, style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.brightness_auto),
            title: Text(l10n.systemTheme),
            selected: themeMode == ThemeMode.system,
            onTap: () {
              ref
                  .read(themeModeProvider.notifier)
                  .setThemeMode(ThemeMode.system);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.brightness_5),
            title: Text(l10n.lightTheme),
            selected: themeMode == ThemeMode.light,
            onTap: () {
              ref
                  .read(themeModeProvider.notifier)
                  .setThemeMode(ThemeMode.light);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.brightness_4),
            title: Text(l10n.darkTheme),
            selected: themeMode == ThemeMode.dark,
            onTap: () {
              ref.read(themeModeProvider.notifier).setThemeMode(ThemeMode.dark);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
