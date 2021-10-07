import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tinder_clone/common/palette.dart';

// Screen padding
const double screenMediumPadding = 16.0;
const double screenSmallPadding = 8.0;

// HomeScreen interactions
const interactionIcons = [
  FontAwesomeIcons.times,
  Icons.refresh,
  Icons.favorite,
];

const interactionIconColors = [
  red,
  yellow,
  green,
];

const interactionIconSizes = [
  0.08,
  0.06,
  0.08,
];

const interactionIconTypes = [
  InteractionType.SWIPE_LEFT,
  InteractionType.REFRESH,
  InteractionType.SWIPE_RIGHT,
];

enum InteractionType {
  SWIPE_LEFT,
  SWIPE_RIGHT,
  REFRESH,
}

// API
const baseUrl = 'https://dummyapi.io/data/v1/';
const appId = '615cb0c09b21eb9a6f39bdb4';
