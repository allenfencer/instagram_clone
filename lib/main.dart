import 'package:flutter/material.dart';
import 'package:instagram_clone/screenData/homepage.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black12,
      ),
      home: HomePage(),
    )
  );
}
