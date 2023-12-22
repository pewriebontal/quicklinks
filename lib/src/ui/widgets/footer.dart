import 'package:flutter/material.dart';
import 'package:quicklinks/src/utils/info.dart' as constants;

class Footer extends StatelessWidget {
  final bool showCopyrightText = constants.kShowCopyrightText;

  const Footer({super.key});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showAboutDialog(context: (context)),
      child: Text(
        showCopyrightText
            ? 'Quick Links\n${constants.kCopyright}'
            : 'Quick Links\n',
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 12),
      ),
    );
  }
}
