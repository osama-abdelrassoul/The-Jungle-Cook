import 'package:flutter/material.dart';

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
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
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
