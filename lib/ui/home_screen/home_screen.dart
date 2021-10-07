import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/common/consts.dart';
import 'package:tinder_clone/controllers/tinder_card_controller.dart';
import 'package:tinder_clone/ui/home_screen/interaction_button.dart';
import 'package:tinder_clone/ui/home_screen/tinder_card_stack.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final TinderCardController tinderCardController =
      Get.put(TinderCardController());

  Widget _getBottomSheet(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: screenMediumPadding,
        vertical: screenMediumPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          interactionIcons.length,
          (index) => InteractionButton(
            iconData: interactionIcons[index],
            iconColor: interactionIconColors[index],
            iconSize: interactionIconSizes[index] * screenSize.height,
            interactionType: interactionIconTypes[index],
          ),
        ),
      ),
    );
  }

  Widget _getBody(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: screenSize.height * 0.125),
      child: const TinderCardStack(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(context),
      bottomSheet: _getBottomSheet(context),
    );
  }
}
