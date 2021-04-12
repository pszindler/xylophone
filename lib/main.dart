import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded keyBuild(Color color, int soundNum) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              keyBuild(Colors.green.shade100, 1),
              keyBuild(Colors.green.shade200, 2),
              keyBuild(Colors.green.shade300, 3),
              keyBuild(Colors.green.shade400, 4),
              keyBuild(Colors.green.shade500, 5),
              keyBuild(Colors.green.shade600, 6),
              keyBuild(Colors.green.shade700, 7),
            ],
          ),
        ),
      ),
    );
  }
}
