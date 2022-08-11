import 'package:flutter/material.dart';

class GenreText extends StatelessWidget {
  const GenreText({
    Key? key,
    required this.mainColor,
    required this.genre,
  }) : super(key: key);

  final Color mainColor;
  final String genre;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          '| ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: mainColor,
            fontSize: 16,
          ),
        ),
        Text(
          genre,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: mainColor,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
