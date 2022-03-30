import 'package:flutter/material.dart';

class RichtextWidget extends StatelessWidget {
  const RichtextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: "Into An ",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Raleway",
                fontSize: h * 0.023,
                fontWeight: FontWeight.w600)),
        TextSpan(
            text: "Android",
            style: TextStyle(
                color: Color(0xffE77729),
                fontFamily: "Raleway",
                fontSize: h * 0.027,
                fontWeight: FontWeight.w800)),
        TextSpan(
            text: " & ",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Raleway",
                fontSize: h * 0.023,
                fontWeight: FontWeight.w600)),
        TextSpan(
            text: "IOS",
            style: TextStyle(
                color: Color(0xffE77729),
                fontFamily: "Raleway",
                fontSize: h * 0.027,
                fontWeight: FontWeight.w800)),
        TextSpan(
            text: " App By",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Raleway",
                fontSize: h * 0.023,
                fontWeight: FontWeight.w600)),
      ]),
    );
  }
}
