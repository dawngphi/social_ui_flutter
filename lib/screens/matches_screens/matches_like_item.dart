import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:social_ui/bottom_bar/models/matches_model.dart';
import '../../bottom_bar/models/friendzy_data.dart';

class   MatchesLikeItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MatchesLikeItemState();
}

class MatchesLikeItemState extends State<MatchesLikeItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: matchesItemLikeData.length,
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemBuilder: (context, index) {
          final matches = matchesItemLikeData[index];
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 88,
                height: 88,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFFDD88CF),
                    width: 3,
                  ),
                ),
                child: ClipOval(
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Image.asset(
                          matches.imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),

                      Container(
                        color: Colors.black.withValues(alpha: 0.15),
                      ),
                      Center(
                        child: Image.asset(
                          matches.imagesIcon,
                          width: 30,
                          height: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  Text(
                    matches.titleLike,
                    style: const TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(width: 3,),
                  Text(matches.quantity.toString(), style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14,  color: Color(0xFFDD88CF)),)
                ],
              )

            ],
          );
        },
      ),
    );
  }
}
