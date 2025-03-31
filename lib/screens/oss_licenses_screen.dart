import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class OssLicensesScreen extends StatelessWidget {
  const OssLicensesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: PackageInfo.fromPlatform(),
      builder: (context, AsyncSnapshot<PackageInfo> snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        return LicensePage(
          applicationName: snapshot.data?.appName ?? 'Todo App',
          applicationVersion: snapshot.data?.version ?? '',
          applicationLegalese: '© 2025',
        );
      },
    );
  }
}
