import 'package:flutter/material.dart';
import 'package:social_ui/screens/add_new_card_screens/card_item.dart';
import 'package:social_ui/screens/all_card_screens/add_card_button.dart';
import 'package:social_ui/screens/send_money_screens/sent_to_item.dart';
import 'package:social_ui/screens/send_money_screens/usd_card_item.dart';

class SendMoneyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SendMoneyScreenState();
}

class SendMoneyScreenState extends State<SendMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: _buildAppbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AddCardButton(title: "Send Money",onTap: (){},),
      body: Column(
        children: [
          SizedBox(
            height: 240,
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.85),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(children: [CardItem(backgroungCard: "assets/images/background_card.png", cardType: "assets/images/master_card.png",)]),
                );
              },
            ),
          ),
          SendToItem(),
          Padding(padding: EdgeInsets.all(16),
          child: UsdCardItem(amount: "36.00"),
          )
        ],
      ),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: 16),
        onPressed: () {},
        icon: Image.asset('assets/images/back_icon.png', width: 48, height: 48),
      ),
      title: Text(
        "Send Money",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      centerTitle: true,
    );
  }
}
