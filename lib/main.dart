import 'package:app_try2/constants/sounds/numbers.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PlayAudio());
}

class PlayAudio extends StatelessWidget {
  const PlayAudio({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  () async {
                    final player = AudioPlayer();
                    await player.play(
                      AssetSource(SoundsNumbers.soundNumberOne),
                    );
                  };
                },
                child: const Icon(Icons.play_arrow),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
