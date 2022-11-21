import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(const MusicWidget());
}

class MusicWidget extends StatefulWidget {
  const MusicWidget({super.key});

  @override
  State<MusicWidget> createState() => _MusicWidgetState();
}

class _MusicWidgetState extends State<MusicWidget> {
  void playMusic(int musicNumber) {
    final player = AudioCache();
    player.play('music-$musicNumber.mp3');
  }

  SizedBox bar() {
    return const SizedBox(
      height: 10.0,
    );
  }

  Expanded myButton({
    required Color color,
    required int musicNumber,
    required String title,
  }) {
    return Expanded(
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(30.0),
          backgroundColor: Colors.white,
          shadowColor: color,
          alignment: Alignment.centerLeft,
        ),
        onPressed: () async {
          playMusic(musicNumber);
        },
        icon: Icon(
          Icons.music_note,
          color: color,
        ),
        label: Text(
          title,
          style: TextStyle(
            color: color,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('Music'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(
              color: Colors.red,
              musicNumber: 1,
              title: 'Samsung Galaxy',
            ),
            bar(),
            myButton(
              color: Colors.green,
              musicNumber: 2,
              title: 'Samsung Note',
            ),
            bar(),
            myButton(
              color: Colors.black,
              musicNumber: 3,
              title: 'Nokia',
            ),
            bar(),
            myButton(
              color: Colors.orange,
              musicNumber: 4,
              title: 'IPhone 11',
            ),
            bar(),
            myButton(
              color: Colors.blue,
              musicNumber: 5,
              title: 'Whatsapp',
            ),
            bar(),
            myButton(
              color: Colors.purple,
              musicNumber: 6,
              title: 'Samsung S7',
            ),
            bar(),
            myButton(
              color: Colors.grey,
              musicNumber: 7,
              title: 'IPhone 6',
            ),
          ],
        ),
      ),
    );
  }
}
