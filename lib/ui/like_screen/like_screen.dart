import 'package:flutter/material.dart';
import 'package:tinder_clone/common/consts.dart';
import 'package:tinder_clone/dummy_data/dummy_data.dart';
import 'package:tinder_clone/ui/like_screen/like_card.dart';

class LikeScreen extends StatelessWidget {
  const LikeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            '10 Likes',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          const Divider(thickness: 1.0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: screenSmallPadding,
                vertical: screenSmallPadding,
              ),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                children: List.generate(
                  userList.length,
                  (index) => LikeCard(
                    user: userList[index],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
