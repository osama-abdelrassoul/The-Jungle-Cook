import 'package:flutter/material.dart';
import 'package:the_jungle_cook/constants.dart';
import 'package:the_jungle_cook/utilities.dart';
import 'package:the_jungle_cook/widgets/widgets.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double avatarRadius = 60;
    Size screenSize = Utilities().getScreenSize();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const CustomBackButton(),
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
                  onPressed: () {},
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
