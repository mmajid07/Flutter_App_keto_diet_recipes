import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key); // Corrected constructor

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  final audioPlayer = AudioPlayer();


  playAudio() async {
    await audioPlayer.play(AssetSource('audio/1.mp3'),);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Audio Player'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: (){
                  setState(() {


                    playAudio();
                  });
                },
                child: Text('Play Audio'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
