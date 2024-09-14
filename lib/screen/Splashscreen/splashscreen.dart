import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:festival_post_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:glowy_borders/glowy_borders.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 4), (timer) {
      Navigator.of(context).pushReplacementNamed('/home');
    },);
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: search,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedGradientBorder(
              gradientColors: [
                button,
                Colors.tealAccent,
                Colors.teal,
                Colors.blue.shade400,
                Colors.blue,
                Colors.blueAccent.shade400,

              ],
              borderRadius: BorderRadius.circular(999),
              borderSize: 5,
              glowSize: 0,
              child: CircleAvatar(
                radius: h * 0.100,
                backgroundColor: search,
                backgroundImage: AssetImage('asset/img/image-Photoroom.png'),
              ),
            ),
          ),
         Center(
           child: Text('Fley Maker',style: TextStyle(fontSize: w*0.100,fontWeight: FontWeight.bold,color: Colors.white),),
         )
        ],
      ),
    );
  }
}
