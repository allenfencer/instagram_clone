import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/screenData/chats.dart';
import 'package:instagram_clone/screenData/requests.dart';
import 'package:instagram_clone/screenData/rooms.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back,color: Colors.white,)),
            title: Text('allen.fencer'),
            actions: [
              IconButton(
                onPressed: (){},
                icon: Icon(FontAwesomeIcons.video),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(FontAwesomeIcons.edit),
              )
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),
              tabs: [
                Tab(text: 'Chats',),
                Tab(text: 'Rooms',),
                Tab(text: '0 requests',),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Chats(),
              Rooms(),
              Requests(),
            ],
          ),
        ),
    );
  }
}
