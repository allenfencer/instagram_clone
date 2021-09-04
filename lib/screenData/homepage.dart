import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/screenData/screens/home.dart';
import 'package:instagram_clone/screenData/screens/likedScreen.dart';
import 'package:instagram_clone/screenData/screens/profileScreen.dart';
import 'package:instagram_clone/screenData/screens/reelsScreen.dart';
import 'package:instagram_clone/screenData/screens/searchScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex=0;

  final List <Widget> screens= <Widget> [
    Home(),
    SearchScreen(),
    ReelsScreen(),
    LikedScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              _currentIndex=index;
            });
          },
          backgroundColor: Colors.black12,
          currentIndex: _currentIndex,
          iconSize: 24,
          selectedIconTheme: IconThemeData(size: 28,color: Colors.white),
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white38,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.search),
                label: 'Search',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.movie_creation_outlined),
                label: 'Reels',
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.heart),
                label: 'Liked',
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.user),
                label: 'Profile',
            ),
          ],
        ),
        body: screens.elementAt(_currentIndex),
      ),
    );
  }
}
