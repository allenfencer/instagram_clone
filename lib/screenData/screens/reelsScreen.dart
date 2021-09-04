import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Text('Reels is currently unavailable in your region',style: TextStyle(color: Colors.white,fontSize: 24,),textAlign: TextAlign.center,),
        ),
      ),
    );
  }
}
