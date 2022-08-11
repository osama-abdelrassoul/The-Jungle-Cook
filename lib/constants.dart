import 'package:flutter/material.dart';
import 'package:the_jungle_cook/UI/screens/screens.dart';

const Color kPrimaryOrangeColor = Color(0xFFFC6011);
const Color kPrimaryDarkBlueColor = Color(0xFF11263C);
const Color kPrimaryDarkGrayColor = Color(0xFF52616B);
const Color kPrimaryGrayColor = Color(0xFFF0F5F9);

const double kAppBarHeight = 40;

const String kLogo = 'assets/images/logo.png';

const String kLogoWithName = 'assets/images/logo_with_name.png';

const String us = 'assets/images/profile_example.png';

const String kFoodExample = 'assets/images/food_example.jpg';

const String kFoodExample2 = 'assets/images/food_example_2.png';

const TextStyle kOptionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

const List<Widget> kWidgetOptions = <Widget>[
  HomeScreen(),
  ProfileScreen(),
  Center(
    child: Text(
      'Saved',
      style: kOptionStyle,
    ),
  ),
  Center(
    child: Text(
      'Setting',
      style: kOptionStyle,
    ),
  ),
];
