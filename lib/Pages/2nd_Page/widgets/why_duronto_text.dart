import 'package:flutter/material.dart';

class WhyDurontoText extends StatelessWidget {
  const WhyDurontoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(children: [
        TextSpan(
            text: "Why ",
            style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: "Raleway")),
        TextSpan(
            text: "Duronto",
            style: TextStyle(
                fontSize: 24,
                color: Color(0xffE77729),
                fontWeight: FontWeight.w800,
                fontFamily: "Raleway")),
      ]),
    );
  }
}
