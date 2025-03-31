import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_20250401/providers/theme_state.dart';

class ThemeSettings extends ConsumerWidget {
  const ThemeSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return ExpansionTile(
      leading: const Icon(Icons.palette_outlined),
      title: const Text('外観'),
      initiallyExpanded: true,
      children: [
        RadioListTile<ThemeMode>(
          title: const Text('システム設定に従う'),
          secondary: const Icon(Icons.brightness_auto),
          value: ThemeMode.system,
          groupValue: themeMode,
          onChanged: (ThemeMode? value) {
            if (value != null) {
              ref.read(themeModeProvider.notifier).setThemeMode(value);
            }
          },
        ),
        RadioListTile<ThemeMode>(
          title: const Text('ライトモード'),
          secondary: const Icon(Icons.brightness_5),
          value: ThemeMode.light,
          groupValue: themeMode,
          onChanged: (ThemeMode? value) {
            if (value != null) {
              ref.read(themeModeProvider.notifier).setThemeMode(value);
            }
          },
        ),
        RadioListTile<ThemeMode>(
          title: const Text('ダークモード'),
          secondary: const Icon(Icons.brightness_4),
          value: ThemeMode.dark,
          groupValue: themeMode,
          onChanged: (ThemeMode? value) {
            if (value != null) {
              ref.read(themeModeProvider.notifier).setThemeMode(value);
            }
          },
        ),
      ],
    );
  }
}
