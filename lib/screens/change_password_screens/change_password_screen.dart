import 'package:flutter/material.dart';
import 'package:social_ui/screens/edit_profile_screens/edit_profile_fullname_item.dart';

import '../all_card_screens/add_card_button.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChangePasswordScreenState();

}

class ChangePasswordScreenState extends State<ChangePasswordScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            EditProfileFullnameItem(title: "Current Password", textFile: "Current Password", iconLeft: "assets/images/lock_icon.png", obscureText: true,),
            SizedBox(height: 25),
            EditProfileFullnameItem(title: "New Password", textFile: "New Password", iconLeft: "assets/images/lock_icon.png", iconRight: "assets/images/eye_icon.png", obscureText: true,),
            SizedBox(height: 25),
            EditProfileFullnameItem(title: "Cofirm New Password", textFile: "Cofirm New Password", iconLeft: "assets/images/lock_icon.png", obscureText: true,),
            SizedBox(height: 3),
            Text("Both Passwords Must Match", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFFA2A2A7))),
            SizedBox(height: 25),
            AddCardButton(title: "Change Password", onTap: (){},),
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
        "Change Password",
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