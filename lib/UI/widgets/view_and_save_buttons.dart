import 'package:flutter/material.dart';

class ViewAndSaveButtons extends StatelessWidget {
  const ViewAndSaveButtons({
    Key? key,
    required this.mainColor,
  }) : super(key: key);

  final Color mainColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: mainColor.withOpacity(0.2),
              elevation: 0,
              enableFeedback: false,
            ),
            child: Icon(
              Icons.bookmark_add_outlined,
              color: mainColor,
              size: 25,
            ),
          ),
        ),
        const Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 6,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: mainColor,
              elevation: 0,
              enableFeedback: false,
            ),
            child: const Text(
              'View Recipe',
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
