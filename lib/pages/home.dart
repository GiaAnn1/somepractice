import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'screamer1.dart';
import 'screamer2.dart';
import 'screamer3.dart';
import 'package:screamer_practice/main.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.sizeOf(context).width;
    double screenheight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Color(0xff3a3b3c),
      appBar: appBar(context),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                  context,
                  CustomPageRoute(builder: (context) => const Screamer3())
                );
                },
                child: Container(
                  margin: EdgeInsets.only(
                    left: 10,
                    top: screenheight - (screenheight - 100),
                    ),
                  height: screenwidth/2 - 20,
                  width: screenwidth/2 - 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/maze.jpg',
                        width: 120,
                        height: 120,),
                        Text(
                          'MAZE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ), 
                          ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      )
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text(
        "Tap the Icons!",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            CustomPageRoute(builder: (context) => const Screamer1())
          );
        },
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset('assets/images/xd.png',)
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Screamer2())
          );
        },
          child: Container(
          margin: EdgeInsets.all(14),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            'assets/images/e.svg',
            color: Colors.white,
            )
          ),
        ),
      ],
    );
  }
}