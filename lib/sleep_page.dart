import 'package:flutter/material.dart';

class SleepPage extends StatelessWidget {
  SleepPage({super.key});
  final List titles = [
    "Adults need 7-9 hours of sleep per night for optimal health.",
    "Maintain a consistent sleep schedule, even on weekends.",
    "Create a bedtime routine to signal your body it's time to sleep.",
    "Keep your bedroom cool, dark, and quiet for better sleep.",
    "Avoid caffeine, alcohol, and large meals before bedtime.",
    "Regular exercise can help you fall asleep faster and sleep more deeply.",
    "Limit screen time before bed as blue light can disrupt sleep.",
    "Deep sleep is crucial for memory consolidation and physical recovery.",
    "Naps can be beneficial but keep them short (20-30 minutes).",
    "Stress management techniques can improve sleep quality.",
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurpleAccent, Colors.pinkAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                Icons.bedtime,
                size: 90,
                color: Colors.white,
              ),
              Text(
                "Healthy Sleep Tips",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: titles.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.3),
                          ),
                          child: ListTile(
                            leading: Icon(
                              Icons.bedtime,
                              color: Colors.white,
                            ),
                            title: Text(
                              titles[index],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
