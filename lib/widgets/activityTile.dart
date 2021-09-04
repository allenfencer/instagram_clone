import 'package:flutter/material.dart';
import 'package:instagram_clone/models/story.dart';

class ActivityTile extends StatelessWidget {
  final int index;
  const ActivityTile({Key key,this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 15,
      leading: CircleAvatar(
        backgroundImage: NetworkImage(Story.stories[index==0?6:index].imageUrl),
        radius: 26,
      ),
      title: RichText(text: TextSpan(text: '${Story.stories[index==0?6:index].name}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),children: [
        TextSpan(
          text: ' started following you.',style: TextStyle(color: Colors.white70,fontSize: 16,fontWeight: FontWeight.w500)
        ),
      ]),),
      trailing: OutlinedButton(
        onPressed: (){},
        child: Text('Message',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
        style: OutlinedButton.styleFrom(backgroundColor: Colors.black,elevation: 0,side: BorderSide(color: Colors.white60)),
      ),
    );
  }
}
