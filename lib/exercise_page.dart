import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ExercisePage extends StatefulWidget {
  ExercisePage({super.key});

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  late VideoPlayerController vidController;
  final List videos = [
    "assets/videos/11.mp4",
    "assets/videos/52 - Cable lateral raise H-hip.mp4",
    "assets/videos/n2.mp4",
    "assets/videos/11.mp4",
    "assets/videos/Nested Sequence 363.mp4",
  ];
  final List listTilesTitels = [
    'Push-ups',
    'Squats',
    'Plank',
    'Jumping Jacks',
    'Lunges',
  ];

  final List listTilesSubTitels = [
    'Great for chest and arms',
    'Best for legs and glutes',
    'Core strengthening exercise',
    'Full body cardio exercise',
    'Legs and balance workout',
  ];

  final List numOfSets = [3, 4, 3, 4, 4];
  late String currentVideo;
  @override
  void initState() {
    super.initState();
    currentVideo = videos[0];
    initializeVideo(currentVideo);
  }

  void initializeVideo(String videoPath) {
    vidController = VideoPlayerController.asset(videoPath)
      ..initialize().then((_) {
        setState(() {});
        vidController.play();
      });
  }

  @override
  void dispose() {
    vidController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Center(
          child: Text(
            "Health & Fitnesss",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: VideoPlayer(vidController),
            width: double.infinity,
            height: 300,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Exercise Videos",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: listTilesTitels.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentVideo = videos[index];
                        vidController.pause();
                        vidController.dispose();
                        initializeVideo(currentVideo!);
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: Icon(
                          Icons.directions_run,
                          size: 40,
                        ),
                        title: Text(
                          listTilesTitels[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        subtitle: Text(
                          listTilesSubTitels[index],
                          style: TextStyle(fontSize: 17),
                        ),
                        trailing: Container(
                          width: 70,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text(
                              "${numOfSets[index]} Sets",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
