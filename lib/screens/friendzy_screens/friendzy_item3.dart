import 'package:flutter/cupertino.dart';

class FriendzyItem3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          fit: StackFit.expand,
          children: [Image.asset("assets/images/mountain.png")],
        ),
      ),
    );
  }
}
