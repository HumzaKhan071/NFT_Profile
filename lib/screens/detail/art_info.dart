import 'package:flutter/material.dart';
import 'package:nft_app/model/art.dart';
import 'package:nft_app/model/profile.dart';

class ArtInfo extends StatelessWidget {
  final Art art;
  ArtInfo({Key? key, required this.art}) : super(key: key);

  final Profile profile = Profile.generateProfile();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            art.name!,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              _buildIconText(
                  profile.imgUrl!, 0, "Creater", profile.twitter!.substring(1)),
              SizedBox(
                width: 100,
              ),
              _buildIconText(
                  "assets/images/eth.png", 8, "Current bid", "${art.price} ETH")
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            art.desc!,
            style:
                TextStyle(wordSpacing: 3, height: 1.3, color: Colors.black87),
          )
        ],
      ),
    );
  }

  _buildIconText(String imgUrl, double padding, String title, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          child: Image.asset(imgUrl),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16, height: 1.5),
            )
          ],
        )
      ],
    );
  }
}
