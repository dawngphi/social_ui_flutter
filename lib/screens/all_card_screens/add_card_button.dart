import 'package:flutter/material.dart';

class AddCardButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AddCardButtonState();
}

class AddCardButtonState extends State<AddCardButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 50,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {},
          child: const Center(child: Text('Hello')),
        ),
      ),
    );
    ;
  }
}
