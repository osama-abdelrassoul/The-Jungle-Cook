import 'package:flutter/material.dart';

class Recipe {
  final String genre;
  final String imageUrl;
  final String recipeName;
  final String recipeDescription;
  final int cookTime;
  final int ingredientNumber;
  final Color mainColor;

  Recipe({
    required this.genre,
    required this.imageUrl,
    required this.recipeName,
    required this.recipeDescription,
    required this.cookTime,
    required this.ingredientNumber,
    required this.mainColor,
  });
}
