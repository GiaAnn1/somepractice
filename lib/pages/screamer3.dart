import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'home.dart';
import 'dart:async';
import 'package:screamer_practice/main.dart';

class Screamer3 extends StatefulWidget {
  const Screamer3({super.key});
  
  @override
  State<Screamer3> createState() => _Screamer3State();
  
}



AudioPlayer player = new AudioPlayer();
const sound = 'audio/exscream.mp3';
class _Screamer3State extends State<Screamer3> {
  @override
  Widget build(BuildContext context) {
    player.setVolume(1);
    player.play(AssetSource(sound));
    Future.delayed(const Duration(milliseconds: 6000), (){
            Navigator.push(
                context,
                CustomPageRoute(
                    builder: (context) => const HomePage()));
            });
    return Scaffold(
      backgroundColor: Color(0xffc7c7c7),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: FittedBox(
          child: Image.asset('assets/images/ex.webp'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}