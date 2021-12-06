// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nft_app/constants/colors.dart';
import 'package:nft_app/model/art.dart';
import 'package:nft_app/screens/detail/art_info.dart';
import 'package:nft_app/screens/detail/bidder_list.dart';
import 'package:nft_app/screens/detail/widgets/buy_button.dart';
import 'package:nft_app/screens/profile/widgets/tab_sliver_delegate.dart';

import 'widgets/detail_banner.dart';

class DetailPage extends StatelessWidget {
  final Art art;
  DetailPage({Key? key, required this.art}) : super(key: key);

  final tabs = ["Info", "Bids", "History"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
          length: 3,
          initialIndex: 1,
          child: NestedScrollView(
              headerSliverBuilder: (context, bool innerBoxIsScroll) {
                return <Widget>[
                  SliverAppBar(
                    elevation: 0,
                    expandedHeight: 330,
                    backgroundColor: buttonColor,
                    leading: _buildIcon(context, Icons.arrow_back_ios_outlined,
                        back: true),
                    actions: [_buildIcon(context, Icons.more_vert_outlined)],
                    flexibleSpace: FlexibleSpaceBar(
                      background: DetailBanner(art: art),
                    ),
                    pinned: true,
                  ),
                  SliverToBoxAdapter(
                    child: ArtInfo(art: art),
                  ),
                  SliverPersistentHeader(
                    delegate: TabSliverDelegate(TabBar(
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey[400],
                        indicatorColor: Colors.black,
                        isScrollable: true,
                        labelPadding: EdgeInsets.only(left: 5, right: 40),
                        tabs: tabs
                            .map((e) => Tab(
                                  child: Text(
                                    e,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ))
                            .toList())),
                    pinned: true,
                  )
                ];
              },
              body: TabBarView(
                children: [
                  ListView(
                    children: [],
                  ),
                  BidderList(scrollKey: "bids", bidderList: art.bids!),
                  BidderList(scrollKey: "history", bidderList: art.history!),
                ],
              ))),
      floatingActionButton: BuyButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _buildIcon(context, IconData icon, {bool back = false}) {
    return IconButton(
      onPressed: back ? () => Navigator.pop(context) : null,
      icon: Icon(
        icon,
        color: Colors.black,
        size: 20,
      ),
      splashRadius: 25,
    );
  }
}
