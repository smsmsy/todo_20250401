import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../l10n/app_localizations.dart';
import 'package:todo_20250401/providers/theme_state.dart';

class ThemeSettings extends ConsumerWidget {
  const ThemeSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final currentThemeMode = ref.watch(themeModeProvider);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.themeSettings,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          ListTile(
            title: Text(l10n.systemTheme),
            leading: const Icon(Icons.brightness_auto),
            selected: currentThemeMode == ThemeMode.system,
            onTap:
                () => ref
                    .read(themeModeProvider.notifier)
                    .setThemeMode(ThemeMode.system),
          ),
          ListTile(
            title: Text(l10n.lightTheme),
            leading: const Icon(Icons.light_mode),
            selected: currentThemeMode == ThemeMode.light,
            onTap:
                () => ref
                    .read(themeModeProvider.notifier)
                    .setThemeMode(ThemeMode.light),
          ),
          ListTile(
            title: Text(l10n.darkTheme),
            leading: const Icon(Icons.dark_mode),
            selected: currentThemeMode == ThemeMode.dark,
            onTap:
                () => ref
                    .read(themeModeProvider.notifier)
                    .setThemeMode(ThemeMode.dark),
          ),
        ],
      ),
    );
  }
}
