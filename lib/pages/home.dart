import 'package:e_commerce/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CataLogg'),
        
      ),
      drawer:  const MyDrawer(),
    );
  }
}
