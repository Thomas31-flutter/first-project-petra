import 'dart:async';
import 'package:firstprojectpetra/bottom_navigation.dart';
import 'package:firstprojectpetra/exercise_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => BottomNavigationPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.fitness_center,
              size: 80,
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Health & Fitness",
              style: TextStyle(color: Colors.white, fontSize: 42),
            ),
          ],
        ),
      ),
    );
  }
}
