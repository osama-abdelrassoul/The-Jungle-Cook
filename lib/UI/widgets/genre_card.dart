import 'package:flutter/material.dart';
import 'package:the_jungle_cook/constants.dart';
import 'package:the_jungle_cook/json/profile_details.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width * 99,
      height: screenSize.height * 0.04,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 27, right: 10),
            child: Row(
              children: List.generate(recipesType.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: screenSize.height * 0.05,
                    decoration: BoxDecoration(
                        color: kPrimaryGrayColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text(recipesType[index])),
                  ),
                );
              }),
            ),
          )),
    );
  }
}
