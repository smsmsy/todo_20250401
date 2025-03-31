// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Flutter デモ';

  @override
  String get homePageTitle => 'Flutter デモ ホームページ';

  @override
  String get settings => '設定';

  @override
  String currentThemeMode(String mode) {
    return '現在のテーマモード: $mode';
  }

  @override
  String get settingsDrawerTitle => '設定';

  @override
  String get themeSettings => 'テーマ設定';

  @override
  String get systemTheme => 'システム';

  @override
  String get lightTheme => 'ライト';

  @override
  String get darkTheme => 'ダーク';

  @override
  String get about => 'このアプリについて';

  @override
  String version(String version) {
    return 'バージョン $version';
  }

  @override
  String get licenses => 'ライセンス';
}
