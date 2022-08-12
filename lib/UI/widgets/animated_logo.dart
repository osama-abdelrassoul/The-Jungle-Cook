import 'package:flutter/material.dart';
import 'package:the_jungle_cook/constants.dart';

class AnimatedLogo extends StatelessWidget {
  const AnimatedLogo({
    Key? key,
    required this.avatarRadius,
  }) : super(key: key);

  final double avatarRadius;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'logo',
      child: CircleAvatar(
        radius: avatarRadius,
        backgroundColor: Colors.white,
        child: Image.asset(kLogo),
      ),
    );
  }
}
