import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_ui/screens/matches_screens/matches_like_item.dart';
import 'package:social_ui/screens/matches_screens/your_matches_item.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => MatchesScreenState();
}

class MatchesScreenState extends State<MatchesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          MatchesLikeItem(),
          YourMatchesItem(),
        ],
      ),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Color(0xFFFDF7FD),
      leading: IconButton(
        padding: EdgeInsets.only(left: 16),
        onPressed: () {},
        icon: Image.asset(
          'assets/images/back_icon.png',
          width: 48,
          height: 48,
        ),
      ),
      title: Text("Matches", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/switch_icon.png',
            width: 48,
            height: 48,
          ),
        ),
      ],
    );
  }
}
