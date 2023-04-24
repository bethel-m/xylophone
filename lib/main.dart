import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());
playSound(int soundNumber) {
  final player = AudioPlayer();
  player.play(AssetSource('note$soundNumber.wav'));
}

Expanded buildKey({MaterialColor color = Colors.red, int soundNumber = 1}) {
  return Expanded(
    child: TextButton(
      onPressed: () async {
        playSound(soundNumber);
      },
      style: TextButton.styleFrom(
        elevation: 5,
        backgroundColor: color,
      ),
      child: Text("note $soundNumber"),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.green, soundNumber: 2),
              buildKey(color: Colors.pink, soundNumber: 3),
              buildKey(color: Colors.blueGrey, soundNumber: 4),
              buildKey(color: Colors.amber, soundNumber: 5),
              buildKey(color: Colors.cyan, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
