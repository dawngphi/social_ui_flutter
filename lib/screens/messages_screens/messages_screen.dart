import 'package:flutter/cupertino.dart';

class MessagesScreen extends StatefulWidget{
  const MessagesScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => MessagesScreenState();

}

class MessagesScreenState extends State<MessagesScreen>{
  @override
  Widget build(BuildContext context) {
    return Text("MessagesScreen");
  }

}