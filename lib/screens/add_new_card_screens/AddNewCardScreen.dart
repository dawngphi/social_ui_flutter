import 'package:flutter/material.dart';
import 'package:social_ui/screens/add_new_card_screens/card_item.dart';

import 'add_new_card_name_item.dart';

class AddNewCardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AddNewCardScreenState();
}

class AddNewCardScreenState extends State<AddNewCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardItem(backgroungCard: "assets/images/background_card.png", cardType: "assets/images/master_card.png",),
            SizedBox(height: 35),
            AddNewCardNameItem()],
        ),
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
        "Add New Card",
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
      ),
      centerTitle: true,
    );
  }
}
