import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';

class SettingsHeader extends StatelessWidget {
  const SettingsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        l10n.settingsDrawerTitle,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
