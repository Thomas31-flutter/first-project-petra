import 'package:firstprojectpetra/equipment_page.dart';
import 'package:firstprojectpetra/exercise_page.dart';
import 'package:firstprojectpetra/sleep_page.dart';
import 'package:flutter/material.dart';

import 'food_page.dart';

class BottomNavigationPage extends StatefulWidget {
  BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int itemSelected = 0;
  List<Widget> pages = [
    FoodPage(),
    ExercisePage(),
    EquipmentPage(),
    SleepPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: TextStyle(color: Colors.blue),
            unselectedLabelStyle: TextStyle(color: Colors.grey),
            currentIndex: itemSelected,
            onTap: (value) {
              setState(() {
                itemSelected = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.fastfood,
                  ),
                  label: "Food"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.directions_run,
                  ),
                  label: "Exercise"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.fitness_center,
                  ),
                  label: "Equipment"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.bedtime,
                  ),
                  label: "Sleep")
            ]),
        body: pages[itemSelected]);
  }
}
