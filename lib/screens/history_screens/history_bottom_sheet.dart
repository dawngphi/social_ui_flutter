import 'package:flutter/material.dart';
import 'package:social_ui/screens/transaction_history_screens/transaction_history_item.dart';

import 'category_chart_item.dart';

class HistoryBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        DraggableScrollableSheet(
          initialChildSize: 0.8,
          minChildSize: 0,
          maxChildSize: 0.9,
          builder: (_, controller) => Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            ),
            padding: EdgeInsets.all(16),
            child: ListView(
              controller: controller,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    margin: EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Color(0xFFE7EAEE),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                CategoryChartItem(),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Transaction History", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                    Text("See All",  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF0066FF)))
                  ],
                ),
                SizedBox(height: 15),
                Text("Today", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xFFA2A2A7)),),
                SizedBox(
                  height: 300,
                  child: TransactionHistoryItem(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

}