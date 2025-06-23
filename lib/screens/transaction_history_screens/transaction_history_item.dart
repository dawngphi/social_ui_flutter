import 'package:flutter/material.dart';

class TransactionHistoryItem extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => TransactionHistoryItemState();

}

class TransactionHistoryItemState extends State<TransactionHistoryItem>{
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color(0xFFF4F4F4),
            borderRadius: BorderRadius.circular(30)
          ),
          child: Image.asset("assets/images/apple_icon.png", width: 18, height: 18,),
        ),
        SizedBox(width: 12),
        Column(
          children: [

            Text("Apple Store", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
            SizedBox(height: 3),
            Text("Entertainment", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFFA2A2A7))),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("- \$5.99", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
          ],
        )
      ],
    );
  }

}