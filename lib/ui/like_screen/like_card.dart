import 'package:flutter/material.dart';
import 'package:tinder_clone/common/consts.dart';
import 'package:tinder_clone/common/palette.dart';
import 'package:tinder_clone/models/models.dart';

class LikeCard extends StatelessWidget {
  final User user;
  const LikeCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: NetworkImage(user.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [black.withOpacity(0.25), black.withOpacity(0)],
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            bottom: screenSmallPadding,
            left: screenSmallPadding,
            child: Text(
              '${user.firstName} ${user.lastName}',
              style: const TextStyle(
                color: white,
                fontSize: 15.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
