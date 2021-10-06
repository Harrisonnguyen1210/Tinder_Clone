import 'package:flutter/material.dart';
import 'package:tinder_clone/common/palette.dart';
import 'package:tinder_clone/models/models.dart';

class TinderCardInfo extends StatelessWidget {
  final User user;
  const TinderCardInfo({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${user.firstName} ${user.lastName}',
          style: const TextStyle(
            color: white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 15.0),
        Text(
          user.age.toString(),
          style: const TextStyle(
            color: white,
            fontSize: 18.0,
          ),
        )
      ],
    );
  }
}
