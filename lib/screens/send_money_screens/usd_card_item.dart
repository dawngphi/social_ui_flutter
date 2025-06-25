import 'package:flutter/material.dart';

class UsdCardItem extends StatelessWidget {
  final String amount;

  const UsdCardItem({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1, color: Color(0xFFE7EAEE)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Enter Your Amount", style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color(0xFF7E848D))),
              Text("Change Currency?", style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color(0xFFFF3F60)),)
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text("USD", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xFF9BB2D4))),
              SizedBox(width: 20),
              Text(amount, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xFF1E1E2D)))
            ],
          )
        ],
      ),
    );
  }
}
