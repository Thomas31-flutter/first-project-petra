import 'package:flutter/material.dart';

class EquipmentPage extends StatelessWidget {
  EquipmentPage({super.key});
  final List images = [
    "assets/images/Dumbbell.jpg",
    "assets/images/ResistanceBands.jpg",
    "assets/images/Yoga Mat.jpg",
    "assets/images/Jump Rope.jpg",
    "assets/images/Kettlebell.jpg"
  ];
  final List titles = [
    'Dumbbells',
    'Resistance Bands',
    'Yoga Mat',
    'Jump Rope',
    'Kettlebell'
  ];
  final List subTitles = [
    'Versatile for many exercises',
    'Great for mobility and strength',
    'Essential for floor exercises',
    'Excellent cardio equipment',
    'Full body workouts'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Health & Fitnesss",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 20),
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.grey[300],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          images[index],
                          width: 120,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        titles[index],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(subTitles[index]),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
