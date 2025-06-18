import 'package:flutter/material.dart';

class FriendzyItem2 extends StatefulWidget {
  @override
  _FriendzyItem2State createState() => _FriendzyItem2State();
}

class _FriendzyItem2State extends State<FriendzyItem2> {
  bool isMakeFriendsSelected = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Color(0xFFF8E9F5),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          children: [
            // Tab Make Friends
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isMakeFriendsSelected = true;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: isMakeFriendsSelected
                        ? Colors.white
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Make Friends',
                    style: TextStyle(
                      color: Color(0xFF4B164C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isMakeFriendsSelected = false;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: !isMakeFriendsSelected
                        ? Colors.white
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Search Partners',
                    style: TextStyle(
                      color: Color(0xFF4B164C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
