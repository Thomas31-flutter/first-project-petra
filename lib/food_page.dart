import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  FoodPage({super.key});
  final List images = [
    "assets/images/avocado.jpg",
    "assets/images/Salmon.jpg",
    "assets/images/Quinoa.jpg",
    "assets/images/Blueberries.jpg",
    "assets/images/Almonds.jpg",
  ];
  final List titels = [
    "Avocado",
    "Salmon ",
    "Quinoa ",
    "Blueberries  ",
    "Almonds",
  ];
  final List subTitels = [
    "160 cal/100g",
    "579 cal/100g",
    "57 cal/100g",
    "120 cal/100g",
    "208 cal/100g",
  ];
  final List colors = [
    Colors.lightGreen,
    Colors.redAccent,
    Colors.yellowAccent,
    Colors.lightBlue,
    Colors.orangeAccent
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colors[0],
              ),
              child: ListTile(
                leading: Image.asset(
                  images[0],
                  fit: BoxFit.fill,
                  width: 100,
                  height: 100,
                ),
                title: Text(
                  titels[0],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: Text(subTitels[0]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colors[1],
              ),
              child: ListTile(
                leading: Image.asset(
                  images[1],
                  fit: BoxFit.fill,
                  width: 100,
                  height: 100,
                ),
                title: Text(titels[1],
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                subtitle: Text(subTitels[1]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colors[2],
              ),
              child: ListTile(
                leading: Image.asset(
                  images[2],
                  fit: BoxFit.fill,
                  width: 100,
                  height: 100,
                ),
                title: Text(titels[2],
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                subtitle: Text(subTitels[2]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colors[3],
              ),
              child: ListTile(
                leading: Image.asset(
                  images[3],
                  fit: BoxFit.fill,
                  width: 100,
                  height: 100,
                ),
                title: Text(titels[3],
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                subtitle: Text(subTitels[3]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colors[4],
              ),
              child: ListTile(
                leading: Image.asset(
                  images[4],
                  fit: BoxFit.fill,
                  width: 100,
                  height: 100,
                ),
                title: Text(titels[4],
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                subtitle: Text(subTitels[4]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
