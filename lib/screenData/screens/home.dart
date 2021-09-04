import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/screenData/screens/chatScreen.dart';
import 'package:instagram_clone/widgets/postsTab.dart';
import 'package:instagram_clone/widgets/storiesTab.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black12,
        title: Text('Instagram'),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(FontAwesomeIcons.plusSquare,)),
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
              },
              icon: Icon(FontAwesomeIcons.facebookMessenger,)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              StoriesTab(),
              PostsTab(),
            ],
          ),
      ),
    );
  }
}
