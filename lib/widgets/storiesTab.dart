import 'package:flutter/material.dart';
import 'package:instagram_clone/models/story.dart';
import 'package:instagram_clone/widgets/storyTile.dart';

class StoriesTab extends StatelessWidget {
  const StoriesTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      child: ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: Story.stories.length,
        itemBuilder: (BuildContext context,index){
          return StoryTile(index: index,);
        },
      ),
    );
  }
}
