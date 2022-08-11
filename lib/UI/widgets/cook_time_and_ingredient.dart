import 'package:flutter/material.dart';

class CookTimeAndIngredient extends StatelessWidget {
  const CookTimeAndIngredient({
    Key? key,
    required this.cookTime,
    required this.ingredientNumber,
  }) : super(key: key);

  final int cookTime;
  final int ingredientNumber;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.local_fire_department_outlined,
              size: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1.5),
              child: Text(
                '$cookTime min',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.restaurant_menu,
              size: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1.5),
              child: Text(
                '$ingredientNumber Ing',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
