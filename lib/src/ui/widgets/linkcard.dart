import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quicklinks/src/core/launcher.dart';
import 'package:dough/dough.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LinkCard extends StatelessWidget {
  const LinkCard({Key? key, this.icon, this.title, this.url, this.color}) : super(key: key);
  final IconData? icon;
  final String? title;
  final String? url;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return PressableDough(
      child: Card(
        color: color,
        child: InkWell(
          splashColor: Colors.black.withAlpha(50),
          onTap: () {
            launchURL(url!+'?utm_source=links.pewriebontal.ml');
          },
          child: ListTile(
            leading: FaIcon(
              icon!,
              color: Colors.white,
            ),
            title: Text(
              title!,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
            trailing: const Icon(null),
          ),
        ),
      ),
    );
  }
}
