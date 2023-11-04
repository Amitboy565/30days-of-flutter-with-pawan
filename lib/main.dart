import 'package:ecommerce/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: ThemeData(
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      home:  const Scaffold(
        body: Center(
          child: Login()
        ),
      ),
    );
  }
}