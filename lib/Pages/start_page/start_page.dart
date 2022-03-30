import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_ui/Pages/2nd_Page/2nd_Page.dart';

import 'package:work_ui/widgets/text_widget.dart';

import 'widgets/rich_text_widget.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color(0xff313131),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: h * 0.04,
                ),
                Center(
                  child: SizedBox(
                    height: 72,
                    width: 270,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                            text: "Convert Your Website Into A",
                            font_color: Colors.white,
                            font_size: h * 0.023,
                            fontWeight: FontWeight.w600),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextWidget(
                              text: "Flutter App",
                              font_color: const Color(0xffE77729),
                              font_size: h * 0.04,
                              fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            height: h * 0.004,
                            width: w * 0.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.025,
                ),
                Image.asset("assets/image1.png"),
                SizedBox(
                  height: h * 0.025,
                ),
                SizedBox(
                  width: w * 3,
                  height: h * .15,
                  child: Column(
                    children: [
                      TextWidget(
                          text: "You Can Convert Your Website",
                          font_color: Colors.white,
                          font_size: 18,
                          fontWeight: FontWeight.w600),
                      const RichtextWidget(),
                      TextWidget(
                          text: "Some Steps",
                          font_color: Colors.white,
                          font_size: 18,
                          fontWeight: FontWeight.w600)
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.00000,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (() {
                        Get.to(() => const SecondPage());
                      }),
                      child: Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 51.0, top: 6),
                          child: Center(
                            child: Container(
                              height: h * 0.035,
                              width: w * 0.27,
                              decoration: BoxDecoration(
                                  color: const Color(0xff313131),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(25)),
                                  border: Border.all(
                                      width: w * 0.005,
                                      color: const Color(0xffE77729))),
                              child: Center(
                                child: TextWidget(
                                    text: "Let's Start",
                                    font_color: Colors.white,
                                    font_size: h * 0.019,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 85.0, bottom: 15),
                          child: Container(
                            height: h * 0.05,
                            width: w * 0.1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                    width: 2, color: const Color(0xffE77729))),
                            child: Container(
                                child: const Icon(Icons.arrow_right_alt,
                                    color: Colors.white, size: 25),
                                height: h * 0.03,
                                width: h * 0.03,
                                decoration: BoxDecoration(
                                    color: const Color(0xffE77729),
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                        width: w * 0.009,
                                        color: const Color(0xff313131)))),
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
