import 'package:flutter/material.dart';
import 'package:todo_20250401/screens/oss_licenses_screen.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.info_outline),
      title: const Text('OSSライセンス'),
      onTap: () {
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const OssLicensesScreen()),
        );
      },
    );
  }
}
