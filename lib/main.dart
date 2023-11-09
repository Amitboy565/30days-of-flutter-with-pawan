import 'package:e_commerce/pages/home.dart';
import 'package:e_commerce/pages/login.dart';
import 'package:e_commerce/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        primarySwatch: Colors.deepPurple
    ),
      
      routes: {
          "/": (context) => const Home(),
          MyRoutes.homeroute: (context) => const Home(),
          MyRoutes.loginroute: (context) => const Login(),
        }
      
    );
    
  }
}
