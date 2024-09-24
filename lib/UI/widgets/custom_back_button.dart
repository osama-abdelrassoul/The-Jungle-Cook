import 'package:flutter/material.dart';
import 'package:the_jungle_cook/UI/screens/screens.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const LandingScreen(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          child: Row(
            children: const [
              Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
              Text(
                'Back',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        )
      ],
    );
  }
}
