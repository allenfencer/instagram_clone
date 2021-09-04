import 'package:flutter/material.dart';
import 'package:instagram_clone/models/post.dart';
import 'package:instagram_clone/widgets/postTile.dart';

class PostsTab extends StatelessWidget {
  const PostsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: Post.posts.length,
      itemBuilder: (BuildContext context,index){
        return PostTile(index: index,);
      },
    );
  }
}
