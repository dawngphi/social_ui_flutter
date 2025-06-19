import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_ui/screens/friendzy_screens/friendzy_item_story.dart';
import 'friendzy_item_news.dart';
import 'friendzy_item_make_friend.dart';

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
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          FriendzyItemStory(),
          FriendzyItemMakeFriend(),
          FriendzyItemNews(),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Color(0xFFFDF7FD),
      title: Text(
        "Friendzy",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 28,
          color: Color(0xFF4B164C),
        ),
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Image.asset('assets/images/notify_icon.png', width: 48, height: 48),)
      ],
    );
  }
}
