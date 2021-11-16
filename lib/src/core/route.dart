import 'package:flutter/material.dart';
import 'package:quicklinks/src/ui/pages/devpage.dart';
import 'package:quicklinks/src/ui/pages/homepage.dart';
import 'package:quicklinks/src/ui/pages/socialpage.dart';
import 'package:quicklinks/src/ui/pages/webpage.dart';
import 'package:quicklinks/src/ui/pages/articlepage.dart';

const String homepage = 'homepage';
const String webpage = 'webpage';
const String socialpage = 'socialpage';
const String blogpage = 'blogpage';
const String articlepage = 'articlepage';
const String devpage = 'devpage';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case webpage:
      return MaterialPageRoute(builder: (context) => const WebPage());
    case socialpage:
      return MaterialPageRoute(builder: (context) => const SocialPage());
    case homepage:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case articlepage:
      return MaterialPageRoute(builder: (context) => const ArticlePage());
    case devpage:
      return MaterialPageRoute(builder: (context) => const DevPage());
    default:
      return MaterialPageRoute(builder: (context) => const HomePage());
  }
}
