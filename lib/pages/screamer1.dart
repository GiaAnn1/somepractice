import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'home.dart';
import 'dart:async';
import 'package:screamer_practice/main.dart';

class Screamer1 extends StatefulWidget {
  const Screamer1({super.key});
  
  @override
  State<Screamer1> createState() => _Screamer1State();
  
}



AudioPlayer player = new AudioPlayer();
const sound = 'audio/soldiertf2.mp3';
class _Screamer1State extends State<Screamer1> {
  @override
  Widget build(BuildContext context) {
    player.setVolume(1);
    player.play(AssetSource(sound));
    Future.delayed(const Duration(milliseconds: 4000), (){
            Navigator.push(
                context,
                CustomPageRoute(
                    builder: (context) => const HomePage()));
            });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: FittedBox(
          child: Image.asset('assets/images/analogscout.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}