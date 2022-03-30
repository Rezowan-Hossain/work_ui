// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:work_ui/Pages/2nd_Page/widgets/build_app_text.dart';

import 'package:work_ui/Pages/2nd_Page/widgets/website_url_button.dart';
import 'package:work_ui/Pages/2nd_Page/widgets/why_duronto_text.dart';
import 'package:work_ui/Pages/3rd_Page/3rd_page.dart';
import 'package:work_ui/Pages/on_Process.dart';

import '../../widgets/custom_appbar.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff313131),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppbar()),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const WhyDurontoText(),
            SizedBox(
              height: h * 0.015,
            ),
            const BuildAppText(),
            SizedBox(
              height: h * .03,
            ),
            GestureDetector(
              onTap: (() {
                Get.to(() => ThirdPage());
              }),
              child: WebsiteUrlButton(
                  iconlink: 'assets/globe.png',
                  des_text: 'Replace Your Website Url'),
            ),
            SizedBox(
              height: h * .03,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const OnProcess());
              },
              child: WebsiteUrlButton(
                  iconlink: 'assets/smartphone.png',
                  des_text: 'Replace Your Website Url'),
            ),
            SizedBox(
              height: h * .03,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const OnProcess());
              },
              child: WebsiteUrlButton(
                  iconlink: 'assets/playstore.png',
                  des_text: 'Replace Your Website Url'),
            ),
          ],
        ),
      ),
    );
  }
}
