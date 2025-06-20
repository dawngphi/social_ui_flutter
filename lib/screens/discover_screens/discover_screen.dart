import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_ui/screens/discover_screens/discover_item_interest.dart';
import 'package:social_ui/screens/discover_screens/discover_item_new_story.dart';

import 'discover_item_aroundme.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => DiscoverScreenState();
}

class DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
        DiscoverItemNewStory(),
        DiscoverItemInterest(),
        DiscoverItemAroundMe(),
      ],),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/location_icon.png',
                width: 12,
                height: 12,
              ),
              const SizedBox(width: 4),
              const Text(
                "Germany",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              Image.asset(
                'assets/images/expand_more_icon.png',
                width: 12,
                height: 12,
              ),
            ],
          ),
          Text(
            "Discover",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: Color(0xFF4B164C),
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/search_icon.png',
            width: 48,
            height: 48,
          ),
        ),
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
