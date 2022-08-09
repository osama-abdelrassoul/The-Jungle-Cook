import 'package:flutter/material.dart';
import 'package:the_jungle_cook/constants.dart';
import 'package:the_jungle_cook/pages/pages.dart';
import 'package:the_jungle_cook/utilities.dart';
import 'package:the_jungle_cook/widgets/widgets.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double avatarRadius = 70;
    Size screenSize = Utilities().getScreenSize();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.1), BlendMode.dstATop),
                      image: const AssetImage(kLogo),
                    ),
                    color: kPrimaryOrangeColor,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(35),
                      bottomLeft: Radius.circular(35),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Ready to start a journey full of',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'FLAVOURS',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 23,
                        letterSpacing: 10,
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                title: 'Sign in',
                isPrimaryButton: true,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => SignInScreen(),
                    ),
                  );
                },
              ),
              CustomButton(
                title: 'Sign up',
                isPrimaryButton: false,
                onPressed: () {},
              ),
              const SizedBox(height: 35)
            ],
          ),
          Positioned(
            bottom: screenSize.height / 2,
            left: screenSize.width / 2 - avatarRadius,
            child: Hero(
              tag: 'logo',
              child: CircleAvatar(
                radius: avatarRadius,
                backgroundColor: Colors.white,
                child: Image.asset(kLogo),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
