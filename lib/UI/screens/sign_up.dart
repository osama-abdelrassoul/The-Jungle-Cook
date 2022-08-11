import 'package:flutter/material.dart';
import 'package:the_jungle_cook/constants.dart';
import 'package:the_jungle_cook/utilities.dart';
import 'package:the_jungle_cook/UI/widgets/widgets.dart';
import 'package:the_jungle_cook/UI/screens/screens.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utilities().getScreenSize();
    double avatarRadius = screenSize.height * 0.07;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
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
              SignUpForm(
                screenSize: screenSize,
              ),
              const SizedBox(height: 10),
              CustomButton(
                title: 'Sign Up',
                isPrimaryButton: true,
                onPressed: () {},
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SignInScreen(),
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
      ),
    );
  }
}
