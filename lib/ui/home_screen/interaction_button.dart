import 'package:flutter/material.dart';
import 'package:tinder_clone/common/palette.dart';

class InteractionButton extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;
  final double iconSize;
  const InteractionButton({
    Key? key,
    required this.iconData,
    required this.iconColor,
    required this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
