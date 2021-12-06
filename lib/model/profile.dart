import 'package:nft_app/model/bidder.dart';

import 'art.dart';

class Profile {
  String? imgUrl;
  String? name;
  String? twitter;
  String? desc;
  String? email;
  List<Art>? creations;
  List<Art>? collections;
  Profile({
    this.imgUrl,
    this.name,
    this.twitter,
    this.desc,
    this.email,
    this.creations,
    this.collections,
  });
  static Profile generateProfile() {
    return Profile(
        imgUrl: "assets/images/avatar.png",
        name: "Alexy Prefontain",
        twitter: "@aeforia",
        desc:
            "3D artist from Montreal, Canada. His work is all\nabout colors, balance and emotion",
        email: "aeforia@gmail.com",
        collections: [
          Art(
              imgUrl: "assets/images/collection1.jpeg",
              name: "Consume",
              price: 1.53,
              desc:
                  "So happy to share my second collab with my dear\nfather @fcvkrender I'm so proud of his work and\naccomplishments",bids: Bidder.generateBidder(),history: Bidder.generateHistory()),
          Art(
              imgUrl: "assets/images/collection2.jpeg",
              name: "Consume",
              price: 1.53,
              desc:
                  "So happy to share my second collab with my dear\nfather @fcvkrender I'm so proud of his work and\naccomplishments",bids: Bidder.generateBidder(),history: Bidder.generateHistory()),
          Art(
              imgUrl: "assets/images/collection3.jpeg",
              name: "Consume",
              price: 1.53,
              desc:
                  "So happy to share my second collab with my dear\nfather @fcvkrender I'm so proud of his work and\naccomplishments",bids: Bidder.generateBidder(),history: Bidder.generateHistory()),
          Art(
              imgUrl: "assets/images/collection4.jpeg",
              name: "Consume",
              price: 1.53,
              desc:
                  "So happy to share my second collab with my dear\nfather @fcvkrender I'm so proud of his work and\naccomplishments",bids: Bidder.generateBidder(),history: Bidder.generateHistory()),
                   Art(
              imgUrl: "assets/images/collection5.jpeg",
              name: "Consume",
              price: 1.53,
              desc:
                  "So happy to share my second collab with my dear\nfather @fcvkrender I'm so proud of his work and\naccomplishments",bids: Bidder.generateBidder(),history: Bidder.generateHistory()),
                  
        ],
         creations: [
          Art(
              imgUrl: "assets/images/create1.jpeg",
              name: "Consume",
              price: 1.53,
              desc:
                  "So happy to share my second collab with my dear\nfather @fcvkrender I'm so proud of his work and\naccomplishments",bids: Bidder.generateBidder(),history: Bidder.generateHistory()),
          Art(
              imgUrl: "assets/images/create2.jpeg",
              name: "Consume",
              price: 1.53,
              desc:
                  "So happy to share my second collab with my dear\nfather @fcvkrender I'm so proud of his work and\naccomplishments",bids: Bidder.generateBidder(),history: Bidder.generateHistory()),
          Art(
              imgUrl: "assets/images/create3.jpeg",
              name: "Consume",
              price: 1.53,
              desc:
                  "So happy to share my second collab with my dear\nfather @fcvkrender I'm so proud of his work and\naccomplishments",bids: Bidder.generateBidder(),history: Bidder.generateHistory()),
          Art(
              imgUrl: "assets/images/create4.jpeg",
              name: "Consume",
              price: 1.53,
              desc:
                  "So happy to share my second collab with my dear\nfather @fcvkrender I'm so proud of his work and\naccomplishments",bids: Bidder.generateBidder(),history: Bidder.generateHistory()),
                   Art(
              imgUrl: "assets/images/create5.jpeg",
              name: "Consume",
              price: 1.53,
              desc:
                  "So happy to share my second collab with my dear\nfather @fcvkrender I'm so proud of his work and\naccomplishments",bids: Bidder.generateBidder(),history: Bidder.generateHistory()),
                  
                  
        ],);
  }
}
