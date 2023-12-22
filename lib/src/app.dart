import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quicklinks/src/core/route.dart' as route;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Links by Bon',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        //colorSchemeSeed: Colors.green,
        textTheme: GoogleFonts.karlaTextTheme(),
      ),
      onGenerateRoute: route.controller,
      initialRoute: route.homepage,
    );
  }
}
