import 'package:flutter/material.dart';
import 'package:social_ui/screens/history_screens/history_bottom_sheet.dart';

class HistoryScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HistoryScreenState();
}

class HistoryScreenState extends State<HistoryScreen> {
  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor:
          Colors.transparent,
      builder: (context) => HistoryBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: _buildAppbar(),
      body: Center(
        child: ElevatedButton(
          onPressed: _showBottomSheet,
          child: Text("Xem lịch sử giao dịch"),
        ),
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
        "History",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/close_icon.png",
              width: 12,
              height: 12,
            ),
          ),
        ),
      ],
    );
  }
}
