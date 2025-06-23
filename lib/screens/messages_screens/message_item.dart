import 'package:flutter/material.dart';

import '../../bottom_bar/models/message_model.dart';

class MessageItem extends StatefulWidget {
  final MessageModel message;

  const MessageItem({super.key, required this.message});
  @override
  State<StatefulWidget> createState() => MessageItemState();
}

class MessageItemState extends State<MessageItem> {
  @override
  Widget build(BuildContext context) {
    final msg = widget.message;
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image.asset(
              msg.imagePath,
              width: 56,
              height: 56,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  msg.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  msg.message,
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (!msg.readMessage)
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Color(0xFFE9A8E2),
                    shape: BoxShape.circle,
                  ),
                ),
              SizedBox(height: 8),
              Text(
                msg.time,
                style: TextStyle(fontSize: 13, color: Colors.grey[500]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
