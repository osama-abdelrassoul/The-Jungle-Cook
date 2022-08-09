import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Size screenSize;
  final String hintText;
  final Icon? icon;
  final bool isPassword;
  final TextInputType? keyboardType;

  const CustomTextField({
    Key? key,
    required this.screenSize,
    required this.hintText,
    required this.icon,
    required this.isPassword,
    this.keyboardType = null,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width * 0.75,
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: icon,
        ),
      ),
    );
  }
}
