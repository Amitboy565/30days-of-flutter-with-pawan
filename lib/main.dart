import 'package:ecommerce/pages/home.dart';
import 'package:ecommerce/pages/login.dart';
import 'package:ecommerce/utils/routes.dart';
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
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple
      ),
      routes: {
        "/": (context) => const Login(),
        MyRoutes.homeroute: (context) => const Home(),
        MyRoutes.loginroute: (context) => const Login(),
        },

     
      
    );
  }
}
