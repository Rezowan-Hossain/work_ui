// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:work_ui/widgets/text_widget.dart';

import '../widgets/custom_appbar.dart';

class OnProcess extends StatelessWidget {
  const OnProcess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff313131),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppbar()),
      body: Center(
          child: TextWidget(
              text: "On Progress",
              font_color: const Color(0xffE77729),
              font_size: 20,
              fontWeight: FontWeight.w600)),
    );
  }
}
