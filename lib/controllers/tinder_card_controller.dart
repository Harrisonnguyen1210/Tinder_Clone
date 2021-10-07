import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tinder_clone/common/consts.dart';

class TinderCardController extends GetxController {
  CardController cardController = CardController();

  void interactWithCard(InteractionType interactionType) {
    switch (interactionType) {
      case InteractionType.SWIPE_LEFT:
        cardController.triggerLeft();
        updateOnSwipeCardLeft();
        break;
      case InteractionType.SWIPE_RIGHT:
        cardController.triggerRight();
        updateOnSwipeCardRight();
        break;
      case InteractionType.REFRESH:
        refreshCard();
        break;
    }
  }

  void updateOnSwipeCardLeft() {}

  void updateOnSwipeCardRight() {}

  void refreshCard() {}
}
