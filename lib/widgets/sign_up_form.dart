import 'package:flutter/material.dart';
import 'package:the_jungle_cook/widgets/widgets.dart';
import 'package:the_jungle_cook/constants.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(17),
          height: screenSize.height * 0.5,
          width: screenSize.width * 0.85,
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border.fromBorderSide(
              BorderSide(color: kPrimaryOrangeColor, width: 2),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextField(
                screenSize: screenSize,
                hintText: 'Enter your name',
                icon: const Icon(Icons.account_circle_outlined),
                isPassword: false,
              ),
              CustomTextField(
                keyboardType: TextInputType.emailAddress,
                screenSize: screenSize,
                hintText: 'Enter your E-mail',
                icon: const Icon(Icons.email_outlined),
                isPassword: false,
              ),
              CustomTextField(
                screenSize: screenSize,
                hintText: 'Enter your password',
                icon: const Icon(Icons.password_outlined),
                isPassword: true,
              ),
              CustomTextField(
                screenSize: screenSize,
                hintText: 'Confirm your password',
                icon: const Icon(Icons.password_outlined),
                isPassword: true,
              ),
            ],
          ),
        ),
        Positioned(
          left: 30,
          child: Container(
            color: Colors.white,
            child: const Text(
              'Sign Up',
              style: TextStyle(
                color: kPrimaryOrangeColor,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
