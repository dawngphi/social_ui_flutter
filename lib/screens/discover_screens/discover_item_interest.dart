import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../bottom_bar/models/discover_model.dart';

class DiscoverItemInterest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DiscoverItemInterestState();
}

class DiscoverItemInterestState extends State<DiscoverItemInterest> {
  void toggleSelection(int index) {
    setState(() {
      interests = interests.map((item) {
        if (item == interests[index]) {
          return item.copyWith(isSelected: !item.isSelected);
        }
        return item;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 26, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Interest",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: Text(
                  "View all",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFFDD88CF),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
           Wrap(
              spacing: 6,
              runSpacing: 10,
              children: List.generate(interests.length, (index) {
                return InterestItem(
                  interest: interests[index],
                  onTap: () => toggleSelection(index),
                );
              }),
            ),
        ],
      ),
    );
  }
}

class InterestItem extends StatelessWidget {
  final Interest interest;
  final VoidCallback? onTap;

  const InterestItem({super.key, required this.interest, this.onTap});

  @override
  Widget build(BuildContext context) {
    final isSelected = interest.isSelected;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFDD88CF) : Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          "${interest.emoji} ${interest.label}",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: isSelected ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }
}
