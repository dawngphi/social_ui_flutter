import 'package:flutter/material.dart';

class DiscoverItemAroundMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Around me",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          SizedBox(height: 10),
          Text.rich(
            TextSpan(
              text: 'People with “',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Colors.grey[700]),
              children: [
                TextSpan(
                  text: 'Music',
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: '” interest around you',
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                "assets/images/aroundyou.png",
                fit: BoxFit.cover,
                height: 800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
