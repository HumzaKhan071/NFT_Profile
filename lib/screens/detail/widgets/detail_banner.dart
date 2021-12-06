import 'package:flutter/material.dart';
import 'package:nft_app/model/art.dart';

class DetailBanner extends StatelessWidget {
  final Art art;
  const DetailBanner({Key? key, required this.art}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          height: 400,
          width: double.maxFinite,
          color: Colors.white,
          child: Hero(
            tag: art.imgUrl!,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                art.imgUrl!,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
            right: 30,
            bottom: 30,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Icon(
                Icons.favorite_outline_outlined,
                color: Colors.pink,
              ),
            ))
      ],
    );
  }
}
