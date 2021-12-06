// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nft_app/model/art.dart';
import 'package:nft_app/screens/detail/detail.dart';

class CustomGrid extends StatelessWidget {
  final List<Art> list;
  final String scrollKey;
  const CustomGrid({Key? key, required this.list, required this.scrollKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: GridView.builder(
          itemCount: list.length,
          key: PageStorageKey(scrollKey),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 4 / 5,
          ),
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => DetailPage(art: list[index],))),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Hero(
                    tag:list[index].imgUrl!,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        list[index].imgUrl!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )),
    );
  }
}
