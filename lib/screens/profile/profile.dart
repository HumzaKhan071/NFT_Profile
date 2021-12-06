import 'package:flutter/material.dart';
import 'package:nft_app/model/profile.dart';
import 'package:nft_app/screens/profile/widgets/custom_grid.dart';
import 'package:nft_app/screens/profile/widgets/tab_sliver_delegate.dart';

import 'widgets/personal_Info.dart';

class ProfilePage extends StatelessWidget {
  final profile = Profile.generateProfile();

  final tabs = ["Creations","Collections"];
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
              headerSliverBuilder: (context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverToBoxAdapter(
                    child: PersonalInfo(profile: profile),
                  ),
                  SliverPersistentHeader(
                      delegate: TabSliverDelegate(TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.black,
                    tabs: tabs.map((e) => Tab(
                      child: Text(e,style: TextStyle(
                        fontSize: 18,
                      ),),
                    )).toList(),
                  )),pinned: true,)
                ];
              },
              body: TabBarView(
                children: [
                  CustomGrid(list: profile.creations!, scrollKey: "creations",),
                  CustomGrid(list: profile.collections!, scrollKey: "collections",),
                  
                ],
              ))),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: _buildIcon(Icons.arrow_back_ios_outlined),
      actions: [_buildIcon(Icons.more_vert_outlined)],
    );
  }

  IconButton _buildIcon(IconData icon) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon),
      color: Colors.black,
      iconSize: 20,
      splashRadius: 25,
    );
  }
}
