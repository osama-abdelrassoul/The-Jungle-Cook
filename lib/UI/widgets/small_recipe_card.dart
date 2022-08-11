import 'package:flutter/material.dart';
import 'package:the_jungle_cook/constants.dart';
import 'package:the_jungle_cook/json/profile_details.dart';

class SmallRecipeCard extends StatelessWidget {
  const SmallRecipeCard({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 0.8,
      ),
      width: screenSize.width * 0.9,
      height: screenSize.height * 0.28,
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(recipesDetails.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(top: 7.0),
              child: SizedBox(
                width: screenSize.width * 0.9,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 55.0, left: 25),
                      child: Container(
                        width: screenSize.width * 0.8,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.grey,
                                  spreadRadius: 5)
                            ],
                            borderRadius: BorderRadius.circular(5),
                            color: kPrimaryGrayColor),
                        child: Row(
                          children: [
                            Container(
                              width: screenSize.width * 0.3,
                            ),
                            SizedBox(
                              width: screenSize.width * 0.05,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: screenSize.height * 0.001,
                                  bottom: screenSize.height * 0.011),
                              child: SizedBox(
                                width: screenSize.width * 0.4,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding:
                                              const EdgeInsets.only(left: 4),
                                          decoration: const BoxDecoration(
                                              border: Border(
                                                  left: BorderSide(
                                                      color:
                                                          kPrimaryOrangeColor,
                                                      width: 2))),
                                          child: Text(
                                            recipesDetails[index]['type'],
                                            style: const TextStyle(
                                              color: kPrimaryOrangeColor,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.share,
                                                color: kPrimaryDarkBlueColor,
                                              ),
                                            ),
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.add_circle_outline,
                                                color: kPrimaryDarkBlueColor,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 15.0),
                                      child: Text(
                                        recipesDetails[index]['name'],
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Icon(
                                          Icons.outdoor_grill,
                                          color: kPrimaryDarkGrayColor,
                                        ),
                                        Text(
                                          recipesDetails[index]['duration'],
                                          style: const TextStyle(
                                              color: kPrimaryDarkGrayColor),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: screenSize.width * 0.3,
                      height: screenSize.height * 0.16,
                      margin: const EdgeInsets.only(bottom: 40),
                      child: CircleAvatar(
                        backgroundColor: Colors.white.withOpacity(0),
                        radius: screenSize.height * 0.115,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(screenSize.height * 0.45),
                          child: Image.asset(recipesDetails[index]['img']),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
