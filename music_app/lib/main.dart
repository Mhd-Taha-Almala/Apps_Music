import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicWidget());
}

// ignore: use_key_in_widget_constructors
class MusicWidget extends StatelessWidget {
  void playMusic(int musicNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('assets/music-$musicNumber.mp3'));
  }

  Expanded myButton(
      {required int musicNumber, Color? buttonColor, String? buttonText}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 1.0),
        child: ElevatedButton(
          onPressed: () {
            playMusic(musicNumber);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.music_note,
                  color: buttonColor,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text(
                  buttonText!,
                  style: TextStyle(
                    color: buttonColor,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('نغمات'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(
                musicNumber: 1,
                buttonColor: Colors.red,
                buttonText: 'Samsung Galaxy'),
            myButton(
                musicNumber: 2,
                buttonColor: Colors.green,
                buttonText: 'Samsung Note'),
            myButton(
                musicNumber: 3, buttonColor: Colors.black, buttonText: 'Nokia'),
            myButton(
                musicNumber: 4,
                buttonColor: Colors.orange,
                buttonText: 'iPhone 11'),
            myButton(
                musicNumber: 5,
                buttonColor: Colors.blue,
                buttonText: 'Whatsapp'),
            myButton(
                musicNumber: 6,
                buttonColor: Colors.purple,
                buttonText: 'Samsung S7'),
            myButton(
                musicNumber: 7,
                buttonColor: Colors.black,
                buttonText: 'iPhone 6'),
          ],
        ),
      ),
    );
  }
}
