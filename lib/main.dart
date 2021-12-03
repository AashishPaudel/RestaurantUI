import 'dart:async';

import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        'home':(context)=>Home()
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void startTimer() {
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacementNamed('home');
    });
  }
    @override
    void initState() {
      super.initState();
      startTimer();
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Image.asset('assets/logo.png',width: MediaQuery.of(context).size.width*0.5,),
          )
      );
    }
  }

