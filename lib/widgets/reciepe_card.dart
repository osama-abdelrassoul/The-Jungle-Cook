import 'package:flutter/material.dart';
import 'package:the_jungle_cook/utilities.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utilities().getScreenSize();
    return Container(
      height: screenSize.height * 0.6,
    );
  }
}
