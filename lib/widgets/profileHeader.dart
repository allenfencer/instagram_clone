import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(backgroundImage: NetworkImage('https://assets.devfolio.co/users/143cb13d39df466cb2f16c4ad6701c31/avatar.jpeg',),radius: 35,),
          headerData(profileDataInNumbers: 15,profileData: 'Posts'),
          headerData(profileData: 'Followers',profileDataInNumbers: 537),
          headerData(profileDataInNumbers: 579,profileData: 'Following'),
        ],
      ),
    );
  }
}
Widget headerData({int profileDataInNumbers, String profileData}){
  return Container(
    child: Column(
      children: [
        Text(profileDataInNumbers.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
        SizedBox(height: 10,),
        Text(profileData,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),
      ],
    ),
  );
}