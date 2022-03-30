import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String text;
  Color font_color;
  double font_size;
  FontWeight fontWeight;
  TextWidget(
      {Key? key,
      required this.text,
      required this.font_color,
      required this.font_size,
      required this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            color: font_color,
            fontFamily: "Raleway",
            fontStyle: FontStyle.normal,
            fontSize: font_size,
            fontWeight: fontWeight));
  }
}
