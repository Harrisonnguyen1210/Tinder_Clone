import 'package:flutter/material.dart';
import 'package:tinder_clone/common/consts.dart';
import 'package:tinder_clone/common/palette.dart';
import 'package:tinder_clone/models/models.dart';
import 'package:tinder_clone/ui/home_screen/tinder_card_info.dart';

class TinderCard extends StatelessWidget {
  final User user;
  const TinderCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            user.imageUrl,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: grey.withOpacity(0.5),
            blurRadius: 5.0,
            spreadRadius: 2,
          )
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [black.withOpacity(0.25), black.withOpacity(0)],
            end: Alignment.topCenter,
            begin: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: screenMediumPadding,
              left: screenMediumPadding,
              child: TinderCardInfo(user: user),
            )
          ],
        ),
      ),
    );
  }
}
