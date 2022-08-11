import 'package:flutter/material.dart';
import 'package:the_jungle_cook/constants.dart';
import 'package:the_jungle_cook/json/profile_details.dart';

class ReviewsDetails extends StatelessWidget {
  const ReviewsDetails({
    Key? key,
    required this.screenSize,
    required this.avatarRadius,
  }) : super(key: key);

  final Size screenSize;
  final double avatarRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width * 0.88,
      height: screenSize.height * 0.345,
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(reviewsDetails.length, (index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: kPrimaryGrayColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: avatarRadius,
                                backgroundColor: Colors.blue,
                                backgroundImage:
                                    AssetImage(reviewsDetails[index]['img']),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  reviewsDetails[index]['name'],
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  reviewsDetails[index]['time'],
                                  style: const TextStyle(
                                      color: kPrimaryDarkGrayColor,
                                      fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 15.0, left: 5, right: 5),
                          child: Text(
                            reviewsDetails[index]['review'],
                            style: const TextStyle(
                                color: kPrimaryDarkGrayColor, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
