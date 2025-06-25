import 'package:flutter/material.dart';

class AddCardButton extends StatelessWidget {
  final String title;
  final String? icon;
  final Function() onTap;

  AddCardButton({required this.title, this.icon, required this.onTap});

  Widget build(BuildContext context) {
    return Container(
      height: 56,
      margin: const EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF0066FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(width: 8),
            if (icon != null)
              Image.asset(icon!, width: 12, height: 12),
          ],
        ),
      ),
    );
  }
}
