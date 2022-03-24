import 'package:audioplayers/audioplayers_api.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void playsound(int number) {
    final player = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
    player.play('note$number.wav');
  }

  Expanded nice({Color color = Colors.red, int number = 1}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(number);
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            nice(), //default
            nice(color: Colors.orange, number: 2),
            nice(color: Colors.yellow, number: 3),
            nice(color: Colors.green, number: 4),
            nice(color: Colors.blue, number: 5),
            nice(color: Colors.indigo, number: 6),
            nice(color: Colors.purple, number: 7),
          ],
        )),
      ),
    );
  }
}
