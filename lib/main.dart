import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts/splash_screen.dart';

void main() {
  runApp(const MyTravelApp());
}

class MyTravelApp extends StatelessWidget {
  const MyTravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
