import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlameAudio.bgm.initialize();
    FlameAudio.bgm.play('mario.mp3');
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
