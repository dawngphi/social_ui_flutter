import 'package:flutter/material.dart';
import 'package:social_ui/bottom_bar/bottom_bar_custom.dart';
import 'package:social_ui/screens/add_new_card_screens/AddNewCardScreen.dart';
import 'package:social_ui/screens/all_card_screens/AllCardScreen.dart';
import 'package:social_ui/screens/transaction_history_screens/transaction_history_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home:  BottomBar(),
      home: TransactionHistorySreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

