// ignore_for_file: file_names, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:work_ui/Pages/3rd_Page/widgets/try_demo.dart';
import 'package:work_ui/widgets/custom_appbar.dart';
import 'widgets/fixed_site_title_widget.dart';
import 'widgets/fixed_website_widget.dart';
import 'widgets/text_form_field.dart';

class ThirdPage extends StatelessWidget {
  TextEditingController website_text = TextEditingController();

  ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff313131),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppbar()),
      body: Column(
        children: [
          const TryDemo(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
          ),
          CustomTextFormField(website_text: website_text),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          const FixedSiteTitleWidget(),
          FixedWebsiteWidget(
              iconurl: "assets/fb.png", link: 'www.facebook.com'),
          FixedWebsiteWidget(
              iconurl: "assets/linkedin.png", link: 'www.instagram.com'),
          FixedWebsiteWidget(
              iconurl: "assets/github.png", link: 'www.github.com'),
          FixedWebsiteWidget(
              iconurl: "assets/twetter.png", link: 'www.twitter.com'),
        ],
      ),
    );
  }
}
