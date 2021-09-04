import 'package:flutter/material.dart';
import 'package:instagram_clone/models/story.dart';

class StoryTile extends StatelessWidget {
  final int index;
  const StoryTile({Key key,this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Stack(
          children:[
            Container(
              height: 85,
              width: 85,
              margin: EdgeInsets.only(left: 4,top: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  colors: [
                    Color(0xff405DE6),
                    Color(0xff5851DB),
                    Color(0xff833AB4),
                    Color(0xffC13584),
                    Color(0xffE1306C),
                    Color(0xffFD1D1D),
                    Color(0xffF56040),
                    Color(0xffF77737),
                    Color(0xffFCAF45),
                    Color(0xffFFDC80),
                  ]
                )
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 7,right: 7,top: 5),
              clipBehavior: Clip.antiAlias,
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
              ),
              child: Image.network(Story.stories[index].imageUrl),
            ),
          ]
        ),
        Container(
          width: 80,
          alignment: Alignment.bottomCenter,
          child: Text(Story.stories[index].name,style: TextStyle(color: Colors.white),overflow: TextOverflow.ellipsis,),
        ),
      ],
    );
  }
}
