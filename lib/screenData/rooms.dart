import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  const Rooms({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25)
            ),
            margin: EdgeInsets.only(top: 50,bottom: 20,left: 25,right: 25),
            child: Image.asset('images/vc.png'),
          ),
          Text('Video chat with anyone',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),),
          Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: Text('Share a link to anyone to invite to video chat,',style: TextStyle(color: Colors.white54),)
          ),
          Container(
            alignment: Alignment.center,
            child: Text(' even if the don\'t have Instagram.',style: TextStyle(color: Colors.white54),),
          ),
          SizedBox(height: 15,),
          Text('Create Room',style: TextStyle(color: Colors.blue[600],fontSize: 18,fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}
