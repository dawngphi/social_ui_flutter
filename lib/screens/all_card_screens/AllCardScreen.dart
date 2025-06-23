import 'package:flutter/material.dart';
import 'package:social_ui/screens/add_new_card_screens/card_item.dart';
import 'package:social_ui/screens/all_card_screens/add_card_button.dart';

import '../add_new_card_screens/add_new_card_name_item.dart';

class AllCardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AllCardScreenState();
}

class AllCardScreenState extends State<AllCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 56,
        margin: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF0066FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Add Card',
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 8),
                Image.asset("assets/images/add_icon2.png", width: 12, height: 12,)
              ],
            )
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(children: [CardItem(), SizedBox(height: 35), CardItem()]),
      ),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: 16),
        onPressed: () {},
        icon: Image.asset('assets/images/back_icon.png', width: 48, height: 48),
      ),
      title: Text(
        "All Card",
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
      ),
      centerTitle: true,
    );
  }
}
