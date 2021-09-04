import 'package:flutter/material.dart';
import 'package:instagram_clone/models/story.dart';
import 'package:instagram_clone/widgets/activityTile.dart';

class LikedScreen extends StatelessWidget {
  const LikedScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Activity',style: TextStyle(fontSize: 22,color: Colors.white),),
      ),
      body: ListView.builder(
          itemCount: Story.stories.length,
          itemBuilder: (context,index){
            return ActivityTile(index: index,);
          })
    );
  }
}


