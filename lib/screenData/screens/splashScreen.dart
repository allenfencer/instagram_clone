import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_clone/screenData/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3),() {
     return HomePage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
            height: 100,
            width: 100,
            child: Image.network('https://www.pngplay.com/wp-content/uploads/5/Instagram-Pink-Logo-PNG.png',fit: BoxFit.cover,)
        ),
      ),
    );
  }
}
