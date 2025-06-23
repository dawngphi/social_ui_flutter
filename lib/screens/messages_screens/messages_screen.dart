import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_ui/screens/messages_screens/message_item.dart';
import 'package:social_ui/screens/messages_screens/recent_matches_item.dart';

import '../../bottom_bar/models/message_model.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => MessagesScreenState();
}

class MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _buildAppbar(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background_mess.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Column(
            children: [
              RecentMatchesItem(),
              SizedBox(height: 20),
              Expanded(

                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: ListView.separated(
                    padding: const EdgeInsets.only(bottom: 80),
                    scrollDirection: Axis.vertical,
                    // shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) =>
                        Divider(thickness: 1, height: 1, color: Colors.black12),
                    itemCount: messageData.length,
                    itemBuilder: (context, index) {
                      final message = messageData[index];
                      return MessageItem(message: message);
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        padding: EdgeInsets.only(left: 16),
        onPressed: () {},
        icon: Image.asset(
          'assets/images/back_icon.png',
          width: 48,
          height: 48,
          color: Colors.white,
        ),
      ),

      title: Text(
        "Messages",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
    );
  }
}
