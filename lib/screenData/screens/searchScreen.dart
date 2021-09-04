import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
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
        ],
      ),
    );
  }
}
