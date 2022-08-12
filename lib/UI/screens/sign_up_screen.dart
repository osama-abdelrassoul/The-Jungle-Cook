import 'package:flutter/material.dart';
import 'package:the_jungle_cook/utilities.dart';
import 'package:the_jungle_cook/UI/widgets/widgets.dart';
import 'package:the_jungle_cook/UI/screens/screens.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utilities().getScreenSize();
    double avatarRadius = screenSize.height * 0.07;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        targetScreen: const LandingScreen(),
        titleWidget: const Text(
          'Back',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedLogo(avatarRadius: avatarRadius),
            SignUpForm(screenSize: screenSize),
            const SizedBox(height: 10),
            CustomButton(
              title: 'Sign Up',
              isPrimaryButton: true,
              onPressed: () {},
            ),
            const TextAndTextButton(
              text: 'Already have an account?',
              targetScreen: SignInScreen(),
            )
          ],
        ),
      ),
    );
  }
}
