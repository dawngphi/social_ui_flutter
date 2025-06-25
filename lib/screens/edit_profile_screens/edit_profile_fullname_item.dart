import 'package:flutter/material.dart';

class EditProfileFullnameItem extends StatefulWidget {
  final String title;
  final String textFile;
  final String? iconLeft;
  final String? iconRight;
  final bool obscureText;

  EditProfileFullnameItem({
    required this.title,
    required this.textFile,
    this.iconLeft,
    this.iconRight,
    required this.obscureText
  });

  @override
  State<StatefulWidget> createState() => EditProfileFullnameItemState();
}

class EditProfileFullnameItemState extends State<EditProfileFullnameItem> {
  late TextEditingController _nameController;
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.textFile);
    _isObscured = widget.obscureText;
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
  void _toggleObscure() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title, style: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w400)),
        SizedBox(height: 12),
        TextFormField(
          controller: _nameController,
          obscureText: _isObscured,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 10),
            isDense: true,
            prefixIcon: widget.iconLeft != null && widget.iconLeft!.isNotEmpty
                ? Padding(
                    padding: EdgeInsets.only(right: 8, bottom: 10),
                    child: Image.asset(widget.iconLeft!, width: 22, height: 22),
                  )
                : null,
            suffixIcon: widget.iconRight != null
                ? GestureDetector(
              onTap: _toggleObscure,
              child: Padding(
                padding: EdgeInsets.only(right: 8),
                child: Image.asset(
                  widget.iconRight!,
                  width: 22,
                  height: 22,
                ),
              ),
            )
                : null,
            prefixIconConstraints: BoxConstraints(minWidth: 22, minHeight: 22),
            suffixIconConstraints: BoxConstraints(
              minWidth: 22,
              maxWidth: 32,
              minHeight: 22,
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
            ),
          ),
        ),
      ],
    );
  }
}
