// ignore: file_names
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:g4/homePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 6),
      () => Navigator.pushReplacement(
      context , MaterialPageRoute(builder: (context) => HomePage()))
    );
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [

            // ignore: prefer_const_constructors
            Image.asset(
              'assets/launch.png',
              height: 230,
              width: 230,
            ),
            
            const Text(
              "G4",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
          ]
        ),
      ),
    );
  }
}

