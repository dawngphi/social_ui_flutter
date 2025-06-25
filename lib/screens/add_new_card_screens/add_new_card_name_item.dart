import 'package:flutter/material.dart';
import 'package:social_ui/screens/edit_profile_screens/edit_profile_fullname_item.dart';

class AddNewCardNameItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AddNewCardNameItemState();
}

class AddNewCardNameItemState extends State<AddNewCardNameItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EditProfileFullnameItem(
          title: "Cardholder Name",
          textFile: "Tanya Myroniuk",
          iconLeft: "assets/images/user_icon.png",
          obscureText: false,
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: EditProfileFullnameItem(
                title: "Expiry Date",
                textFile: "09/06/2024",
                obscureText: false,
              ),
            ),
            Expanded(child: SizedBox()),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EditProfileFullnameItem(
                    title: "4-digit CVV",
                    textFile: "6986",
                    obscureText: false,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        EditProfileFullnameItem(
          title: "Card Number",
          textFile: "4562 1122 4595 7852",
          iconLeft: "assets/images/card_icon.png",
          iconRight: "assets/images/master_icon.png",
          obscureText: false,
        ),
      ],
    );
  }
}
