import 'package:flutter/material.dart';
import 'package:social_ui/screens/edit_profile_screens/edit_profile_avatar_item.dart';
import 'package:social_ui/screens/edit_profile_screens/edit_profile_birthdate_item.dart';
import 'package:social_ui/screens/edit_profile_screens/edit_profile_fullname_item.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => EditProfileScreenState();
}

class EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Align(alignment: Alignment.center, child: EditProfileAvatarItem()),
            SizedBox(height: 30,),
            EditProfileFullnameItem(title: "Full Name", textFile: "Tanya Myroniuk123",iconLeft: "assets/images/user_icon.png", obscureText: false,),
            SizedBox(height: 20,),
            EditProfileFullnameItem(title: "Email Address", textFile: "Tanya Myroniuk@gmail.com",iconLeft: "assets/images/email_icon.png", obscureText: false,),
            SizedBox(height: 20,),
            EditProfileFullnameItem(title: "Phone Number", textFile: "+8801712663389",iconLeft: "assets/images/phone_icon.png", obscureText: false,),
            SizedBox(height: 20,),
            EditProfileBirthDateItem(title: "Birth Date",),
            SizedBox(height: 100),
            Text("Joined 28 Jan 2021")
          ],
        ),
      ),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Color(0xFFFDF7FD),
      leading: IconButton(
        padding: EdgeInsets.only(left: 16),
        onPressed: () {},
        icon: Image.asset('assets/images/back_icon.png', width: 48, height: 48),
      ),
      title: Text(
        "Edit Profile",
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
      ),
      centerTitle: true,
    );
  }
}
