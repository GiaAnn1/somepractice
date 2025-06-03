import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'home.dart';
import 'dart:async';
import 'package:screamer_practice/main.dart';

class Screamer2 extends StatefulWidget {
  const Screamer2({super.key});
  
  @override
  State<Screamer2> createState() => _Screamer2State();
  
}



AudioPlayer player = new AudioPlayer();
const sound = 'audio/cup.mp3';
class _Screamer2State extends State<Screamer2> {
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
        alignment: Alignment.center,
        child: FittedBox(
          child: Image.asset('assets/images/SuSoldier.webp'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}