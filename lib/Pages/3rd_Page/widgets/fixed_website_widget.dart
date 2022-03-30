import 'package:flutter/material.dart';
import 'package:work_ui/widgets/text_widget.dart';

import '../../webview_Page/web_view.dart';

// ignore: must_be_immutable
class FixedWebsiteWidget extends StatelessWidget {
  String iconurl;
  String link;
  FixedWebsiteWidget({Key? key, required this.link, required this.iconurl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    var Asset;
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.02,
      ),
      child: GestureDetector(
        onTap: (() => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => WebViewPage(url: link),
              ),
            )),
        child: Container(
          padding: const EdgeInsets.only(left: 16),
          width: w * .85,
          height: h * .06,
          decoration: BoxDecoration(
              color: const Color(0xffFA8F82).withOpacity(.2),
              border: Border.all(color: Color(0xffE77729), width: w * 0.009),
              borderRadius: BorderRadius.circular(50)),
          child: Row(
            children: [
              Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(iconurl))),
              ),
              SizedBox(
                width: h * 0.03,
              ),
              TextWidget(
                  text: "https://" + link,
                  font_color: Colors.white,
                  font_size: h * 0.02,
                  fontWeight: FontWeight.w600)
            ],
          ),
        ),
      ),
    );
  }
}
