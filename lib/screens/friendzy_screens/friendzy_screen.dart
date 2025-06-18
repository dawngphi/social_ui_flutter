import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_ui/screens/friendzy_screens/friendzy_item.dart';

import 'friendzy_item3.dart';
import 'friendzy_item_2.dart';

class FriendzyScreen extends StatefulWidget {
  const FriendzyScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => FriendzyScreenState();
}

class FriendzyScreenState extends State<FriendzyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FriendzyItem(),
            FriendzyItem2(),
            FriendzyItem3(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Friendzy",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28, color: Color(0xFF4B164C)),
          ),
          Image.asset('assets/images/notify_icon.png', width: 48, height: 48),
        ],
      ),
    );
  }
}
