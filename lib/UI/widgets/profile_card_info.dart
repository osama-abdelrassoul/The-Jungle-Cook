import 'package:flutter/material.dart';
import 'package:the_jungle_cook/constants.dart';
import 'package:the_jungle_cook/json/profile_details.dart';

class ProfileCardInfo extends StatelessWidget {
  const ProfileCardInfo({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(infoCard.length, (index) {
        return Container(
          width: screenSize.width * 0.2,
          height: screenSize.height * 0.12,
          decoration: BoxDecoration(
            color: kPrimaryGrayColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                infoCard[index]['value'],
                style: TextStyle(
                    color: Colors.black.withOpacity(0.99),
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              Text(
                infoCard[index]['name'],
                style:
                    const TextStyle(color: kPrimaryDarkBlueColor, fontSize: 15),
              )
            ],
          ),
        );
      }),
    );
  }
}
