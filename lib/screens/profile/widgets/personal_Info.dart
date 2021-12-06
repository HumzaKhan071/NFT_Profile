// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nft_app/model/profile.dart';

class PersonalInfo extends StatelessWidget {
  final Profile profile;
  const PersonalInfo({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(profile.imgUrl!),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            profile.name!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            profile.twitter!,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            profile.desc!,
            style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black54),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20,),
          Text(profile.email!,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),),
          SizedBox(height:30,),
        ],
      ),
    );
  }
}
