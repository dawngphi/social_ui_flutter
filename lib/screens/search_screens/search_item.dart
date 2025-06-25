import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchItem extends StatefulWidget {

  final Function(String) onChanged;

  const SearchItem({super.key, required this.onChanged});

  @override
  State<StatefulWidget> createState() => SearchItemState();

}

class SearchItemState extends State<SearchItem>{
  final TextEditingController _controller = TextEditingController();

  void _clearText() {
    _controller.clear();
    widget.onChanged("");
    setState(() {});

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Image.asset("assets/images/search_icon2.png", width: 20, height: 20,),
          SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: _controller,
              onChanged: (value) => widget.onChanged(value),
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
                isCollapsed: true,
              ),
            ),
          ),
          if (_controller.text.isNotEmpty)
            GestureDetector(
              onTap: _clearText,
              child: Image.asset("assets/images/clear_icon.png", width: 12, height: 12,),
            ),
        ],
      ),
    );
  }

}