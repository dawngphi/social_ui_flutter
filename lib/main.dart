import 'package:flutter/material.dart';
import 'package:social_ui/bottom_bar/bottom_bar_custom.dart';
import 'package:social_ui/screens/add_new_card_screens/AddNewCardScreen.dart';
import 'package:social_ui/screens/all_card_screens/AllCardScreen.dart';
import 'package:social_ui/screens/change_password_screens/change_password_screen.dart';
import 'package:social_ui/screens/history_screens/history_screen.dart';
import 'package:social_ui/screens/language_screens/language_screen.dart';
import 'package:social_ui/screens/request_money_screens/request_money_screen.dart';
import 'package:social_ui/screens/search_screens/search_screen.dart';
import 'package:social_ui/screens/send_money_screens/send_money_screen.dart';
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
      home: LanguageScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

