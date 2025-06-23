import 'package:flutter/material.dart';

class EditProfileAvatarItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 45,
          backgroundImage: AssetImage("assets/images/tanya.png"),
        ),
        SizedBox(height: 15),
        Text(
          "Tanya Myroniuk",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
        ),
        Text(
          "Senior Designer",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xFF7E848D),
          ),
        ),
      ],
    );
  }
}
