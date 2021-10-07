import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/controllers/controllers.dart';
import 'package:tinder_clone/models/models.dart';
import 'package:tinder_clone/ui/home_screen/tinder_card.dart';

class TinderCardStack extends StatelessWidget {
  final List<User> userList;
  const TinderCardStack({Key? key, required this.userList}) : super(key: key);

  void _swipeCompleteCallback(
    CardSwipeOrientation orientation,
    int index,
    TinderCardController tinderCardController,
  ) {
    if (orientation == CardSwipeOrientation.left) {
      tinderCardController.updateOnSwipeCardLeft();
    } else if (orientation == CardSwipeOrientation.right) {
      tinderCardController.updateOnSwipeCardRight();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final TinderCardController tinderCardController = Get.find();

    return TinderSwapCard(
      totalNum: userList.length,
      maxWidth: screenSize.width * 0.8,
      maxHeight: screenSize.height * 0.75,
      minWidth: screenSize.width * 0.75,
      minHeight: screenSize.height * 0.7,
      cardController: tinderCardController.cardController,
      swipeCompleteCallback: (orientation, index) =>
          _swipeCompleteCallback(orientation, index, tinderCardController),
      cardBuilder: (context, index) => TinderCard(user: userList[index]),
    );
  }
}
