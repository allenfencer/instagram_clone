import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/models/post.dart';

class PostTile extends StatefulWidget {
  final int index;
  const PostTile({Key key,this.index}) : super(key: key);

  @override
  _PostTileState createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {

  bool _liked=false;
  onLiked(){
    setState(() {
      _liked=!_liked;
    });
  }

  bool _bookmarked=false;
  onSelected(){
    setState(() {
      _bookmarked=!_bookmarked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.6,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 15,),
          //Header
          ListTile(
            horizontalTitleGap: 20,
            visualDensity: VisualDensity(vertical:1.5),
            leading: CircleAvatar(backgroundImage: NetworkImage(Post.posts[widget.index].headerImageUrl),),
            title: Text(Post.posts[widget.index].headerTitle,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
            trailing: Icon(Icons.more_vert,color: Colors.white,),
          ),
          //Post
          GestureDetector(
            onDoubleTap: onLiked,
            child: Container(
              height: 360,
              width: MediaQuery.of(context).size.width,
              child: Image.network(Post.posts[widget.index].postUrl,fit: BoxFit.cover,),
            ),
          ),
          //Footer
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    icon: Icon(
                      _liked?Icons.favorite:Icons.favorite_border,
                      color:_liked?Colors.red : Colors.white70,size: 30,),
                    onPressed: onLiked,
                    padding: EdgeInsets.only(left: 10,right: 10),
                ),
                IconButton(
                  icon: Icon(Icons.mode_comment_outlined,color: Colors.white70,size: 28,),
                  onPressed: (){},
                  padding: EdgeInsets.only(left: 10,right: 10),
                ),
                IconButton(
                  icon: Icon(Icons.send_rounded,color: Colors.white70,size: 30,),
                  onPressed: (){},
                  padding: EdgeInsets.only(left: 10,right: 10),
                ),
                SizedBox(width: MediaQuery.of(context).size.width *0.53),
                IconButton(
                  alignment: Alignment.centerRight,
                  icon: Icon(_bookmarked? Icons.bookmark:Icons.bookmark_border,color: _bookmarked?Colors.white:Colors.white70,size: 30,),
                  onPressed: onSelected,
                  padding: EdgeInsets.only(right: 10),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
