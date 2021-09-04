import 'package:flutter/material.dart';
import 'package:instagram_clone/models/chats.dart';
import 'package:instagram_clone/widgets/chatTile.dart';

class Chats extends StatelessWidget {
  const Chats({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.grey[700].withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: TextField(
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search,color: Colors.white70,size: 25,),
                  hintText: 'Search',
                  hintStyle: TextStyle(fontSize: 18,color: Colors.white70)
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: ChatData.chatList.length,
              itemBuilder: (BuildContext context,index){
                return ChatTile(index: index,);
              },
            ),
          ],
        ),
      ),
    );
  }
}
