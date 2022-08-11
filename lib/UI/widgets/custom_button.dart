import 'package:flutter/material.dart';
import 'package:the_jungle_cook/constants.dart';
import 'package:the_jungle_cook/utilities.dart';

class CustomButton extends StatelessWidget {
  final bool isPrimaryButton;
  final VoidCallback onPressed;
  final String title;
  final bool isLoading;

  const CustomButton({
    Key? key,
    required this.title,
    required this.isPrimaryButton,
    required this.onPressed,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utilities().getScreenSize();
    double buttonHeight = 40;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: isPrimaryButton ? kPrimaryOrangeColor : Colors.white,
        fixedSize: Size(screenSize.width * 0.75, buttonHeight),
        side: isPrimaryButton
            ? null
            : const BorderSide(
                color: kPrimaryOrangeColor,
                width: 2.5,
              ),
      ),
      child: Text(
        title,
        style: TextStyle(
            color: isPrimaryButton ? Colors.white : kPrimaryOrangeColor,
            fontSize: 18,
            letterSpacing: 1.5,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
