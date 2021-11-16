import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dough/dough.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavCard extends StatelessWidget {
  const NavCard({Key? key, this.icon, this.title, this.des, this.color}) : super(key: key);
  final IconData? icon;
  final String? title;
  final String? des;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return PressableDough(
      child: Card(
        color: color,
        child: InkWell(
          splashColor: Colors.black.withAlpha(50),
          onTap: () {
            Navigator.pushNamed(context, des!);
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
