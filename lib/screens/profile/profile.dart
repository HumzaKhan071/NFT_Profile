import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
              headerSliverBuilder: (context, bool innerBoxIsScrolled) {
                return <Widget>[];
              },
              body: TabBarView(
                children: [],
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
