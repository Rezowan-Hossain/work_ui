import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xff313131),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
            height: 22.5,
            width: 22.5,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/appbar_icon.png"))),
          ),
        )
      ],
    );
  }
}
