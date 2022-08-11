import 'package:flutter/material.dart';
import 'package:the_jungle_cook/utilities.dart';
import 'package:the_jungle_cook/UI/widgets/widgets.dart';

class BigRecipeCard extends StatelessWidget {
  final String genre;
  final String imageUrl;
  final String recipeName;
  final String recipeDescription;
  final int cookTime;
  final int ingredientNumber;
  final Color mainColor;

  const BigRecipeCard({
    Key? key,
    required this.genre,
    required this.imageUrl,
    required this.recipeName,
    required this.recipeDescription,
    required this.cookTime,
    required this.ingredientNumber,
    required this.mainColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utilities().getScreenSize();
    Color backgroundColor = mainColor.withOpacity(0.55);
    double avatarRadius = screenSize.height * 0.115;
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(avatarRadius / 2),
          height: screenSize.height * 0.6,
          width: screenSize.width * 0.6,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              screenSize.width * 0.04,
              avatarRadius,
              screenSize.width * 0.04,
              screenSize.width * 0.04,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 4),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: mainColor, width: 2),
                    ),
                  ),
                  child: Text(
                    genre,
                    style: TextStyle(
                      color: mainColor,
                    ),
                  ),
                ),
                Text(
                  recipeName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  recipeDescription,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                CookTimeAndIngredient(
                  cookTime: cookTime,
                  ingredientNumber: ingredientNumber,
                ),
                ViewAndSaveButtons(
                  mainColor: mainColor,
                )
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 8,
                  color: Colors.black,
                  spreadRadius: 0.1,
                )
              ],
            ),
            child: CircleAvatar(
              radius: avatarRadius,
              backgroundImage: AssetImage(
                imageUrl,
              ),
            ),
          ),
        )
      ],
    );
  }
}
