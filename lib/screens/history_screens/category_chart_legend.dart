import 'package:flutter/material.dart';

class CategoryChartLegend extends StatelessWidget {
  const CategoryChartLegend({super.key});

  Widget _buildLegend(String label, Color color) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        SizedBox(width: 6),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF1C1C1E),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(flex: 3, child: _buildLegend("Transaction", Colors.orange)),
            Expanded(flex: 3, child: _buildLegend("Transfer", Colors.greenAccent)),
            Expanded(child: _buildLegend("Travel", Colors.lightBlue)),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(flex: 3, child: _buildLegend("Food", Colors.purpleAccent)),
            Expanded(flex: 3, child: _buildLegend("Shopping", Colors.deepOrangeAccent)),
            Expanded(child: _buildLegend("Car", Colors.tealAccent)),
          ],
        ),
      ],
    );
  }
}
