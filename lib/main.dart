import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded soundNumber(int num) {
    List colors = [
      Colors.brown,
      Colors.blueGrey,
      Colors.purple,
      Colors.brown,
      Colors.teal,
      Colors.amberAccent,
      Colors.red
    ];
    var button = Expanded(
      child: TextButton(
        onPressed: () async {
          final player = AudioPlayer();
          // add one since the note files start from 0
          player.play(AssetSource('note${num + 1}.wav'));
        },
        style: TextButton.styleFrom(
          elevation: 5,
          backgroundColor: colors[num],
        ),
        // add 1 to num so that the notes files start from 1 not 0
        child: Text("Note ${num + 1}"),
      ),
    );
    return button;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (int i = 0; i < 7; i++) soundNumber(i),
            ],
          ),
        ),
      ),
    );
  }
}
