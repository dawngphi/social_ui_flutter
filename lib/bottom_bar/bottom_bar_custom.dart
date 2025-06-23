import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:social_ui/screens/add_new_screens/add_new_screen.dart';
import 'package:social_ui/screens/discover_screens/discover_screen.dart';
import 'package:social_ui/screens/edit_profile_screens/edit_profile_screen.dart';
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
    EditProfileScreen(key: ValueKey('EditProfile')),
    MatchesScreen(key: ValueKey('Matches')),
    MessagesScreen(key: ValueKey('Messages')),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 100),
              transitionBuilder: (child, animation) =>
                  FadeTransition(opacity: animation, child: child),
              child: _screens[currentPageIndex],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(5, (index) {
                          final bool isSelected = index == currentPageIndex;
                          final List<List<String>> icons = [
                            ['assets/images/home_icon.png', 'assets/images/home_icon_select.png'],
                            ['assets/images/discover_icon.png', 'assets/images/discover_icon_select.png'],
                            ['assets/images/add_icon.png', 'assets/images/add_icon.png'],
                            ['assets/images/matches_icon.png', 'assets/images/matches_icon_select.png'],
                            ['assets/images/message_icon.png', 'assets/images/message_icon_select.png'],
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
              ),
            ),
          ],
        ),
      ),
    );
  }

}
