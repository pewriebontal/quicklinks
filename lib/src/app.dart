import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quicklinks/src/core/route.dart' as route;
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quicklinks by Pewrie Bontal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.karlaTextTheme(),
      ),
      onGenerateRoute: route.controller,
      initialRoute: route.homepage,
    );
  }
}
