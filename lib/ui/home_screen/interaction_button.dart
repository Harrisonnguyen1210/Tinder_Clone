import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/common/consts.dart';
import 'package:tinder_clone/common/palette.dart';
import 'package:tinder_clone/controllers/tinder_card_controller.dart';

class InteractionButton extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;
  final double iconSize;
  final InteractionType interactionType;
  const InteractionButton({
    Key? key,
    required this.iconData,
    required this.iconColor,
    required this.iconSize,
    required this.interactionType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TinderCardController tinderCardController = Get.find();
    return GestureDetector(
      onTap: () =>
          tinderCardController.interactWithCard(interactionType),
      child: Container(
        height: iconSize,
        width: iconSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: white,
          boxShadow: [
            BoxShadow(
              color: grey.withOpacity(0.1),
              blurRadius: 10.0,
              spreadRadius: 5,
            )
          ],
        ),
        child: Icon(
          iconData,
          color: iconColor,
        ),
      ),
    );
  }
}
