import 'dart:math';
import 'package:tinder_clone/dummy_data/dummy_data.dart';
import 'package:tinder_clone/utils/utils.dart';

class User {
  final String firstName;
  final String lastName;
  final int age;
  final String imageUrl;

  const User({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.imageUrl,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      age: calculateAge(json['dateOfBirth']),
      firstName: json['firstName'],
      lastName: json['lastName'],
      // Find a better API with good image
      imageUrl: dummyProfileImageUrls[Random().nextInt(11)],
    );
  }
}
