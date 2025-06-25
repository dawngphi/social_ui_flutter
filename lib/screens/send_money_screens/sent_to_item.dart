import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_ui/bottom_bar/models/user_send_to_model.dart';

class SendToItem extends StatelessWidget{
  final user = usersData;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1, color: Color(0xFFE7EAEE))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Send to", style: TextStyle(fontSize: 14),),
          SizedBox(height: 20),
          SizedBox(
            height: 90,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: user.length + 1,
              separatorBuilder: (context, index) => SizedBox(width: 12),
              itemBuilder: (context, index) {
                if (index == 0) return _buildAddButton();
                return _buildUserItem(user[index - 1]);
              },
            ),
          ),

        ],
      ),
    );
  }

  Widget _buildUserItem(UserSendToModel user) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(user.imagePath),
          radius: 28,
        ),
        SizedBox(height: 6),
        Text(user.name, style: TextStyle(fontSize: 12)),
      ],
    );
  }
  Widget _buildAddButton() {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blue),
          ),
          child: Icon(Icons.add, color: Colors.blue),
        ),
        SizedBox(height: 6),
        Text("Add", style: TextStyle(fontSize: 12)),
      ],
    );
  }

}
