import 'package:flutter/material.dart';
import 'package:the_jungle_cook/pages/pages.dart';

const Color kPrimaryOrangeColor = Color(0xFFFC6011);

const String kLogo = 'assets/images/logo.png';

const String kLogoWithName = 'assets/images/logo_with_name.png';

const TextStyle kOptionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

const List<Widget> kWidgetOptions = <Widget>[
  HomeScreen(),
  Center(
    child: Text(
      'Likes',
      style: kOptionStyle,
    ),
  ),
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
