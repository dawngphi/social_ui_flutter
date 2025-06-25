import 'package:flutter/material.dart';

import 'category_chart_legend.dart';

class CategoryChartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Category Chart",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 40),
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/images/chart.png", width: 197, height: 193),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "55%",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Transaction",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA2A2A7),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 25),
        CategoryChartLegend(),
      ],
    );
  }
}
