import 'package:flutter/material.dart';

class TextAndTextButton extends StatelessWidget {
  final String text;
  final Widget targetScreen;

  const TextAndTextButton({
    Key? key,
    required this.text,
    required this.targetScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => targetScreen,
              ),
            );
          },
          child: const Text(
            'click here',
          ),
        )
      ],
    );
  }
}
