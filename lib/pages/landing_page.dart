import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.orange,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
