import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tinder_clone/common/consts.dart';
import 'package:tinder_clone/models/models.dart';
import 'package:tinder_clone/services/user_service.dart';

class TinderCardController extends GetxController {
  final cardController = CardController();
  var userList = <User>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    _fetchUsers();
  }

  Future<void> _fetchUsers() async {
    isLoading(true);
    final fetchedUsers = await UserService.fetchUsers();
    if (fetchedUsers != null) {
      userList.value = fetchedUsers;
    }
    isLoading(false);
  }

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
