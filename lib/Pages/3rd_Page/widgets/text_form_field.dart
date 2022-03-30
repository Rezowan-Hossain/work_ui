import 'package:flutter/material.dart';

import '../../webview_Page/web_view.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController website_text = TextEditingController();
  CustomTextFormField({
    Key? key,
    required TextEditingController website_text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: w * .85,
      height: h * .06,
      padding: const EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
          border: Border.all(width: w * 0.009, color: const Color(0xffE77729)),
          borderRadius: BorderRadius.circular(25)),
      child: TextFormField(
        decoration: InputDecoration(
          prefix: Text(
            "https://",
            style: TextStyle(
                fontFamily: "Raleway",
                color: Colors.white,
                fontSize: h * 0.022,
                fontWeight: FontWeight.w600),
          ),
        ),
        style: const TextStyle(color: Colors.white),
        controller: website_text,
        onEditingComplete: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => WebViewPage(url: website_text.text)));
        },
        cursorColor: Colors.white,
        maxLines: 1,
      ),
    );
  }
}
