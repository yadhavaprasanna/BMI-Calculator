import 'package:flutter/material.dart';
import 'package:health/pages/cardd.dart';
import 'package:health/pages/high.dart';
import 'package:health/pages/result.dart';
import 'package:health/pages/slide.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:health/pages/bmimodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  bool get bmimodel => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0XFF0A0E21),
      ),
      initialRoute: '/h',
      routes: {
        '/d': (context) => High(
              videoPlayerController: null,
            ),
        '/c': (context) => Caard(),
        '/h': (context) => Home(),
        '/s': (context) => Slide(),
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'What is BMI ?',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w900, letterSpacing: 1.5),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: 300,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Column(
                children: [
                  Text(
                    '"BMI" tells you how "big" you are,not how "sick" you are \n',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    '--DR.Arya M.Sharma',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: High(
                  videoPlayerController:
                      VideoPlayerController.asset('videos/bmii.mp4'),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pushNamed(context, '/c');
              });
            },
            child: FittedBox(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                margin: EdgeInsets.only(bottom: 30.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Text(
                      "LET's START",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
