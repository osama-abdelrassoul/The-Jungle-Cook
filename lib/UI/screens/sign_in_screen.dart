import 'package:flutter/material.dart';
import 'package:the_jungle_cook/constants.dart';
import 'package:the_jungle_cook/UI/screens/screens.dart';
import 'package:the_jungle_cook/utilities.dart';
import 'package:the_jungle_cook/UI/widgets/widgets.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utilities().getScreenSize();
    double avatarRadius = screenSize.height * 0.1;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        targetScreen: LandingScreen(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: 'logo',
              child: CircleAvatar(
                radius: avatarRadius,
                backgroundColor: Colors.white,
                child: Image.asset(kLogo),
              ),
            ),
            SignInForm(screenSize: screenSize),
            const SizedBox(height: 10),
            CustomButton(
              title: 'Sign In',
              isPrimaryButton: true,
              onPressed: () {},
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Don\'t have an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const SignUpScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'click here',
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
