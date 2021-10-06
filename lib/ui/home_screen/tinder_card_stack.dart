import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:tinder_clone/models/models.dart';
import 'package:tinder_clone/ui/home_screen/tinder_card.dart';

class TinderCardStack extends StatelessWidget {
  final List<User> userList;
  const TinderCardStack({Key? key, required this.userList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return TinderSwapCard(
      totalNum: userList.length,
      maxWidth: screenSize.width * 0.8,
      maxHeight: screenSize.height * 0.75,
      minWidth: screenSize.width * 0.75,
      minHeight: screenSize.height * 0.7,
      cardBuilder: (context, index) => TinderCard(user: userList[index]),
    );
  }
}
