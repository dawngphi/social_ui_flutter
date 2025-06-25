import 'package:flutter/material.dart';
import 'package:social_ui/screens/edit_profile_screens/edit_profile_fullname_item.dart';

import '../all_card_screens/add_card_button.dart';
import '../edit_profile_screens/edit_profile_birthdate_item.dart';
import '../send_money_screens/usd_card_item.dart';

class RequestMoneyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RequestMoneyScreenState();
}

class RequestMoneyScreenState extends State<RequestMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AddCardButton(title: "Send Money",onTap: () {},),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 10),
            EditProfileFullnameItem(
              title: "Payer Name",
              textFile: "Tanya Myroniuk",
              iconLeft: "assets/images/user_icon.png",
              obscureText: false,
            ),
            SizedBox(height: 20),
            EditProfileFullnameItem(
              title: "Email Address",
              textFile: "Tanya Myroniuk@gmail.com",
              iconLeft: "assets/images/email_icon.png",
              obscureText: false,
            ),
            SizedBox(height: 20),
            EditProfileFullnameItem(
              title: "Description",
              textFile: "Tanya Myroniuk",
              iconLeft: "assets/images/user_icon.png",
              obscureText: false,
            ),
            SizedBox(height: 20),
            EditProfileBirthDateItem(title: "Monthly Due By"),
            SizedBox(height: 40),
            UsdCardItem(amount: "26.00.00"),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: 16),
        onPressed: () {},
        icon: Image.asset('assets/images/back_icon.png', width: 48, height: 48),
      ),
      title: Text(
        "Request Money",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      centerTitle: true,
    );
  }
}
