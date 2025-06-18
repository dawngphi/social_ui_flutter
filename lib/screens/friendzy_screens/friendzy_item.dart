import 'package:flutter/material.dart';

import '../../bottom_bar/models/friendzy_data.dart';

class FriendzyItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 120,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          itemCount: stories.length,
          separatorBuilder: (context, index) => const SizedBox(width: 8),
          itemBuilder: (context, index) {
            final story = stories[index];
            final isMyStory = story.name == "My Story";

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Container(
                      padding: isMyStory
                          ? EdgeInsets.zero
                          : const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: isMyStory
                            ? null
                            : Border.all(
                                color: const Color(0xFFDD88CF),
                                width: 3,
                              ),
                      ),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(story.imagePath),
                      ),
                    ),
                    if (isMyStory)
                      Positioned(
                        bottom: 0,
                        right: -2,
                        child: Container(
                          width: 28,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  story.name,
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
