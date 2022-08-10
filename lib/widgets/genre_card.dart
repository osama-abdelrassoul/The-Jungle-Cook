import 'package:flutter/material.dart';
import '../constants.dart';
import '../json/profile_details.dart';


class GenreCard extends StatelessWidget {
  const GenreCard({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(

      width: screenSize.width * 99,
      height: screenSize.height * 0.04,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 27,right: 10),
            child: Row(
              children: List.generate(recipesType.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(padding: EdgeInsets.all(5),
                    height: screenSize.height * 0.05,
                    decoration:  BoxDecoration(
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
