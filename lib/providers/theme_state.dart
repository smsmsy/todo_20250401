import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_20250401/providers/shared_preferences_provider.dart';

final themeModeProvider = StateNotifierProvider<ThemeModeNotifier, ThemeMode>(
  (ref) => ThemeModeNotifier(ref),
);

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  ThemeModeNotifier(this._ref) : super(ThemeMode.system) {
    _loadTheme();
  }

  final Ref _ref;
  static const _key = 'themeMode';

  Future<void> _loadTheme() async {
    final prefs = await _ref.read(sharedPreferencesProvider.future);
    final themeString = prefs.getString(_key);
    if (themeString != null) {
      state = ThemeMode.values.firstWhere(
        (e) => e.toString() == themeString,
        orElse: () => ThemeMode.system,
      );
    }
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    final prefs = await _ref.read(sharedPreferencesProvider.future);
    await prefs.setString(_key, mode.toString());
    state = mode;
  }
}
