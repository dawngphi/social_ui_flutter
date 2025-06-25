import 'package:flutter/material.dart';
import 'package:social_ui/screens/search_screens/search_item.dart';
import 'package:social_ui/screens/transaction_history_screens/transaction_history_item.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SearchScreenState();

}

class SearchScreenState extends State<SearchScreen> {
  String _searchText = "";
  void _onSearchChanged(String value) {
    setState(() {
      _searchText = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SearchItem(onChanged: _onSearchChanged),
            SizedBox(height: 20),
            Expanded(child: TransactionHistoryItem(searchText: _searchText)),
          ],
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
        "Search",
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/close_icon.png", width: 12, height: 12,),
          ),
        ),
      ],
    );
  }
}