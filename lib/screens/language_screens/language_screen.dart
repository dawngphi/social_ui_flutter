import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_ui/screens/language_screens/language_item.dart';
import 'package:social_ui/screens/search_screens/search_item.dart';

class LanguageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LanguageScreenState();

}


class LanguageScreenState extends State<LanguageScreen>{
  String _searchText = "";
  void _onSearchChanged(String value) {
    setState(() {
      _searchText = value;
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: _buildAppbar(),
     body: Container(padding: EdgeInsets.all(16),
     color: Colors.white,
     child: Column(
         children: [
           SearchItem(onChanged: _onSearchChanged),
           SizedBox(height: 25),

           Expanded(child: LanguageItem())
       ],
     ),
     ),
   );
  }


  AppBar _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: 16),
        onPressed: () {},
        icon: Image.asset('assets/images/back_icon.png', width: 48, height: 48),
      ),
      title: Text(
        "Language",
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