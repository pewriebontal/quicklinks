import 'package:flutter/material.dart';
import 'package:quicklinks/src/core/launcher.dart';
import 'package:dough/dough.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LinkCard extends StatelessWidget {
  const LinkCard(
      {super.key, this.icon, this.title, this.url, this.color, this.iconColor});
  final IconData? icon;
  final String? title;
  final String? url;
  final Color? color;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return PressableDough(
      child: Card(
        color: color,
        child: InkWell(
          splashColor: Colors.deepOrange.withAlpha(69),
          onTap: () {
            launchURL(url!);
          },
          child: ListTile(
            leading: FaIcon(
              icon!,
              color: iconColor,
            ),
            title: Text(
              title!,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black),
            ),
            trailing: const Icon(null),
          ),
        ),
      ),
    );
  }
}
