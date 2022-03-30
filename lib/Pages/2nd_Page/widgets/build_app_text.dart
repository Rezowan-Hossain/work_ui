import 'package:flutter/material.dart';
import 'package:work_ui/widgets/text_widget.dart';

class BuildAppText extends StatelessWidget {
  const BuildAppText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 2, color: const Color(0xffE77729))),
      height: 26,
      width: 341,
      child: Center(
        child: TextWidget(
            text: "Just Some Step To Build A Mobile App",
            font_color: Colors.white,
            font_size: 16,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
