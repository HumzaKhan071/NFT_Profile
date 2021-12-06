import 'package:nft_app/model/bidder.dart';

class Art {
  String? imgUrl;
  String? name;
  String? desc;
  num? price;
  List<Bidder>? bids;

  List<Bidder>? history;

  Art({this.imgUrl, this.name, this.price, this.desc, this.bids, this.history});
}
