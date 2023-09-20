import 'package:flutter/material.dart';
import 'package:dough/dough.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavCard extends StatelessWidget {
  const NavCard(
      {Key? key, this.icon, this.title, this.des, this.color, this.iconColor})
      : super(key: key);
  final IconData? icon;
  final String? title;
  final String? des;
  final Color? color;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return PressableDough(
      child: Card(
        color: color,
        child: InkWell(
          splashColor: Colors.orange.withAlpha(69),
          onTap: () {
            Navigator.pushNamed(context, des!);
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
