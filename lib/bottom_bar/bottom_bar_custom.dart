import 'package:flutter/material.dart';
import 'package:social_ui/screens/add_new_screens/add_new_screen.dart';
import 'package:social_ui/screens/discover_screens/discover_screen.dart';
import 'package:social_ui/screens/friendzy_screens/friendzy_screen.dart';
import 'package:social_ui/screens/matches_screens/matches_screen.dart';
import 'package:social_ui/screens/messages_screens/messages_screen.dart';

class BottomBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomBarState();
}

class BottomBarState extends State<BottomBar> {
  int currentPageIndex = 0;

  final List<Widget> _screens = [
    FriendzyScreen(key: ValueKey('Friendzy')),
    DiscoverScreen(key: ValueKey('Discover')),
    AddNewScreen(key: ValueKey('AddNew')),
    MatchesScreen(key: ValueKey('Matches')),
    MessagesScreen(key: ValueKey('Messages')),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: _screens[currentPageIndex],
        ),
        bottomNavigationBar: Padding(

          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(5, (index) {
                final bool isSelected = index == currentPageIndex;
                final List<List<String>> icons = [
                  [
                    'assets/images/home_icon.png',
                    'assets/images/home_icon_select.png',
                  ],
                  [
                    'assets/images/discover_icon.png',
                    'assets/images/discover_icon_select.png',
                  ],
                  [
                    'assets/images/add_icon.png',
                    'assets/images/add_icon.png',
                  ],
                  [
                    'assets/images/matches_icon.png',
                    'assets/images/matches_icon_select.png',
                  ],
                  [
                    'assets/images/message_icon.png',
                    'assets/images/message_icon_select.png',
                  ],
                ];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentPageIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),

                    child: Image.asset(
                      isSelected ? icons[index][1] : icons[index][0],
                      height: 40,
                      color: null,
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
