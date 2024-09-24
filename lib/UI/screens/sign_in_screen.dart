import 'package:flutter/material.dart';
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
        targetScreen: const LandingScreen(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedLogo(avatarRadius: avatarRadius),
            SignInForm(screenSize: screenSize),
            const SizedBox(height: 10),
            CustomButton(
              title: 'Sign In',
              isPrimaryButton: true,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RootApp(),
                ));
              },
            ),
            const TextAndTextButton(
              text: 'Don\'t have an account?',
              targetScreen: SignUpScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
