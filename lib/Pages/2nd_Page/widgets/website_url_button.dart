import 'package:flutter/material.dart';

class WebsiteUrlButton extends StatelessWidget {
  String iconlink;
  String des_text;

  WebsiteUrlButton({Key? key, required this.iconlink, required this.des_text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffFA8F82).withOpacity(.2),
          border: Border.all(color: const Color(0xffE77729), width: w * 0.009),
          borderRadius: BorderRadius.circular(10)),
      width: w * 0.91,
      height: h * 0.224,
      child: Column(
        children: [
          SizedBox(
            height: h * 0.04,
          ),
          Image.asset(iconlink),
          SizedBox(
            height: h * 0.04,
          ),
          Text(
            des_text,
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Raleway",
                fontWeight: FontWeight.w600,
                fontSize: w * 0.044),
          )
        ],
      ),
    );
  }
}
