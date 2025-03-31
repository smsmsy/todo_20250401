// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Flutter Demo';

  @override
  String get homePageTitle => 'Flutter Demo Home Page';

  @override
  String get settings => 'Settings';

  @override
  String currentThemeMode(String mode) {
    return 'Current theme mode: $mode';
  }

  @override
  String get settingsDrawerTitle => 'Settings';

  @override
  String get themeSettings => 'Theme Settings';

  @override
  String get systemTheme => 'System';

  @override
  String get lightTheme => 'Light';

  @override
  String get darkTheme => 'Dark';

  @override
  String get about => 'About';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get licenses => 'Licenses';
}
