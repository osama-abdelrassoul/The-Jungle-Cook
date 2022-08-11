import 'package:flutter/material.dart';
import 'package:the_jungle_cook/UI/screens/screens.dart';
import 'package:the_jungle_cook/UI/widgets/custom_app_bar.dart';
import 'package:the_jungle_cook/utilities.dart';
import 'package:the_jungle_cook/constants.dart';
import 'package:the_jungle_cook/UI/widgets/widgets.dart';
import 'package:the_jungle_cook/json/profile_details.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int activeMenu = 0;
  double avatarRadius = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 28,
              ),
              color: Colors.grey),
        ],
        targetScreen: const RootApp(),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    Size screenSize = Utilities().getScreenSize();
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 10),
      width: screenSize.width,
      height: screenSize.height,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue,
              image: const DecorationImage(
                image: AssetImage(
                  us,
                ),
                fit: BoxFit.cover,
              )),
          width: screenSize.width * 0.3,
          height: screenSize.height * 0.15,
        ),
        SizedBox(height: screenSize.height * 0.011),
        const Text(
          "The Jungle Cook",
          style: TextStyle(color: Colors.black),
        ),
        Text(
          "Mr Potato",
          style: TextStyle(color: Colors.black.withOpacity(0.3)),
        ),
        SizedBox(
          height: screenSize.height * 0.022,
        ),
        ProfileCardInfo(screenSize: screenSize),
        SizedBox(
          height: screenSize.height * 0.022,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingScreen()));
              },
              child: Container(
                height: screenSize.height * 0.06,
                width: screenSize.width * 0.7,
                decoration: BoxDecoration(
                    color: kPrimaryGrayColor,
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                        fontSize: 18,
                        color: kPrimaryDarkBlueColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UploadRecipes()));
              },
              child: Container(
                height: screenSize.height * 0.06,
                width: screenSize.width * 0.12,
                decoration: BoxDecoration(
                    color: kPrimaryGrayColor,
                    borderRadius: BorderRadius.circular(5)),
                child: const Icon(
                  Icons.cloud_upload,
                  color: kPrimaryOrangeColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenSize.height * 0.011,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(profileList.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      activeMenu = index;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: activeMenu == index
                              ? const Border(
                                  bottom:
                                      BorderSide(color: Colors.red, width: 2),
                                )
                              : null,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 6.0, left: 15, right: 15),
                          child: Text(
                            profileList[index],
                            style: TextStyle(
                                fontSize: 16,
                                color: activeMenu == index
                                    ? Colors.black.withOpacity(0.9)
                                    : Colors.black.withOpacity(0.5)),
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
        SizedBox(
          height: screenSize.height * 0.022,
        ),
        activeMenu == 1
            ? ReviewsDetails(screenSize: screenSize, avatarRadius: avatarRadius)
            : Column(
                children: [
                  GenreCard(screenSize: screenSize),
                  SizedBox(
                    height: screenSize.height * 0.022,
                  ),
                  SmallRecipeCard(screenSize: screenSize)
                ],
              )
      ]),
    );
  }
}
