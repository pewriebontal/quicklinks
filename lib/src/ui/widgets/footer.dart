import 'package:flutter/material.dart';
import 'package:quicklinks/src/utils/info.dart' as constants;

class Footer extends StatelessWidget {
  final bool showCopyrightText = constants.kShowCopyrightText;

  const Footer({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => showAboutDialog(context: (context)),
        child: Text(
        showCopyrightText
            ? 'Made with Flutter.\n${constants.kCopyright}'
            : 'Made with Flutter.\n',
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 11),
      ),
    );
  }
}
