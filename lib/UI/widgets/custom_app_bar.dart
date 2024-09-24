import 'package:flutter/material.dart';
import 'package:the_jungle_cook/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  final Widget? titleWidget;
  final List<Widget>? actions;
  final Widget targetScreen;

  const CustomAppBar({
    Key? key,
    this.titleWidget,
    this.actions,
    required this.targetScreen,
  })  : preferredSize = const Size.fromHeight(kAppBarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => targetScreen,
            ),
          );
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
      ),
      title: titleWidget,
      actions: actions,
    );
  }
}
