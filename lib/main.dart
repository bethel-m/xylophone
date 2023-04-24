import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());
playSound(int soundNumber) {
  final player = AudioPlayer();
  player.play(AssetSource('note$soundNumber.wav'));
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
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(1);
                  },
                  style: TextButton.styleFrom(
                    elevation: 5,
                    backgroundColor: Colors.red,
                  ),
                  child: const Text("note1"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(2);
                  },
                  style: TextButton.styleFrom(
                    elevation: 5,
                    backgroundColor: Colors.amber,
                  ),
                  child: const Text("note1"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(3);
                  },
                  style: TextButton.styleFrom(
                    elevation: 5,
                    backgroundColor: Colors.teal,
                  ),
                  child: const Text("note1"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(4);
                  },
                  style: TextButton.styleFrom(
                    elevation: 5,
                    backgroundColor: Colors.blueGrey,
                  ),
                  child: const Text("note1"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(5);
                  },
                  style: TextButton.styleFrom(
                    elevation: 5,
                    backgroundColor: Colors.deepPurple,
                  ),
                  child: const Text("note1"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(6);
                  },
                  style: TextButton.styleFrom(
                    elevation: 5,
                    backgroundColor: Colors.pink,
                  ),
                  child: const Text("note1"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(7);
                  },
                  style: TextButton.styleFrom(
                    elevation: 5,
                    backgroundColor: Colors.cyan,
                  ),
                  child: const Text("note1"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
