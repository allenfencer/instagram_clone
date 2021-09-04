import 'package:flutter/material.dart';
import 'package:instagram_clone/models/chats.dart';

class ChatTile extends StatelessWidget {
  final int index;
  const ChatTile({Key key,this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 15,
      leading: CircleAvatar(backgroundImage: NetworkImage(ChatData.chatList[index].userProfile),radius: 25,),
      title: Text(ChatData.chatList[index].username,style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white),),
      subtitle: Text(ChatData.chatList[index].userDesc,style: TextStyle(fontSize: 16,color: Colors.white70),),
      trailing: Icon(Icons.camera_alt_outlined,color: Colors.white70,size: 28,),
    );
  }
}
