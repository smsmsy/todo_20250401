import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../../l10n/app_localizations.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.about, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          FutureBuilder<PackageInfo>(
            future: PackageInfo.fromPlatform(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(l10n.version(snapshot.data!.version));
              }
              return const CircularProgressIndicator();
            },
          ),
          const SizedBox(height: 8),
          ListTile(
            title: Text(l10n.licenses),
            leading: const Icon(Icons.info_outline),
            onTap: () => Navigator.pushNamed(context, '/licenses'),
          ),
        ],
      ),
    );
  }
}
