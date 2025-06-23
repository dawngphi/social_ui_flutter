import 'package:flutter/material.dart';
import 'package:social_ui/screens/transaction_history_screens/transaction_history_item.dart';

class TransactionHistorySreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TransactionHistorySreenState();
}

class TransactionHistorySreenState extends State<TransactionHistorySreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                  Text("See All", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF0066FF))),
                ],
              ),
              TransactionHistoryItem(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: 16),
        onPressed: () {},
        icon: Image.asset('assets/images/back_icon.png', width: 48, height: 48),
      ),
      title: Text(
        "Transaction History",
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: IconButton(
            onPressed: () {

            },
            icon: Image.asset("assets/images/reload_icon.png"),
          ),
        ),
      ],
    );
  }
}
