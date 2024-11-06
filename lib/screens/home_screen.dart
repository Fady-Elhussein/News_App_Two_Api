import 'package:flutter/material.dart';
import 'package:untitled/screens/tech_screen.dart';
import 'package:untitled/screens/tesla_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeslaScreen(),
                    ));
              },
              child: Text("Tesla_Screen")),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TechScreen(),
                    ));
              },
              child: Text("Tech_Screen")),
        ],
      ),
    );
  }
}
