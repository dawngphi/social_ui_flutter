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
      floatingActionButton: AddCardButton(title: "Add Card", icon: "assets/images/add_icon2.png",onTap : (){

      }),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(children: [
          CardItem(backgroungCard: "assets/images/background_card.png", cardType: "assets/images/master_card.png",),
          SizedBox(height: 35),
          CardItem(backgroungCard: "assets/images/card_background.png", cardType: "assets/images/visa.png",)]),
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
