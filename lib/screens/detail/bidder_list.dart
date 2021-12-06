import 'package:flutter/material.dart';
import 'package:nft_app/model/bidder.dart';

import 'widgets/bidder_card.dart';

class BidderList extends StatelessWidget {
  final String scrollKey;
  final List<Bidder> bidderList;

  const BidderList(
      {Key? key, required this.scrollKey, required this.bidderList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(20),
        key: PageStorageKey(scrollKey),
        itemBuilder: (context, index) => BidderCard(bidder: bidderList[index]),
        separatorBuilder: (_, index) => SizedBox(
              height: 15,
            ),
        itemCount: bidderList.length);
  }
}
