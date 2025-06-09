import 'package:firstprojectpetra/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.deepPurpleAccent, centerTitle: true)),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
