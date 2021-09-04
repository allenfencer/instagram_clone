import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/models/profile.dart';
import 'package:instagram_clone/widgets/profileHeader.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('allen.fencer'),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(FontAwesomeIcons.plusSquare),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(FontAwesomeIcons.bars),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProfileHeader(),
            userBio(),
            editButton(context),
            highlights(),
            button(),
            gridBuilder(),
          ],
        ),
      ),
    );
  }
}


Widget userBio(){
  return Container(
    margin: EdgeInsets.only(top: 10,left: 15),
    alignment: Alignment.centerLeft,
    child: RichText(
      text: TextSpan(text: 'Allen fencer\n\n',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white,),
          children: [
            TextSpan(text: 'EX~OOEHS\n',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white,)),
            TextSpan(text: 'BASELIAN\n',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white,)),
          ]
      ),
    ),
  );
}

Widget editButton(BuildContext context){
  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
    margin: EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.white54,width: 2),
    ),
    child: Text('Edit Profile',style: TextStyle(color: Colors.white,fontSize: 18),),
  );
}

Widget highlights(){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
    child: Row(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white70,width: 2),
          ),
          child: CircleAvatar(
            backgroundColor: Colors.greenAccent,
            backgroundImage: NetworkImage('https://d1ymz67w5raq8g.cloudfront.net/Pictures/480xany/3/4/2/513342_gettyimages1053776630_690692.jpg'),
            radius: 30,
          ),
        ),
        SizedBox(width: 25,),
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white70,width: 2),
          ),
          child: CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(Icons.add,color: Colors.white70,size: 35,),
            radius: 30,
          ),
        ),
      ],
    ),
  );
}

Widget gridBuilder(){
  return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: Profile.profilePic.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 5,crossAxisSpacing: 5),
      itemBuilder: (BuildContext context,index){
        return Container(
          width: 150,
          height:  150,
          child: Image.network(Profile.profilePic[index].profileDataUrl,fit: BoxFit.cover,),
        );
      },
  );
}

Widget button(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(
        padding: EdgeInsets.only(bottom: 10),
        icon: Icon(Icons.grid_on_outlined,color: Colors.white,size: 30,), onPressed: (){},),
      IconButton(
        padding: EdgeInsets.only(bottom: 10),
        icon: Icon(Icons.person_pin_sharp,color: Colors.white54,size: 32,), onPressed: (){},)
    ],
  );
}