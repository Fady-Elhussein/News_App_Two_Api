import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/articals_provider.dart';
import 'package:untitled/provider/tech_provider.dart';
import 'package:untitled/screens/home_screen.dart';
import 'package:untitled/screens/tesla_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TeslaArticlesProvider(),),
      ChangeNotifierProvider(create: (context) => TechArticlesProvider(),),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

