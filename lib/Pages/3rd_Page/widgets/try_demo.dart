import 'package:flutter/material.dart';
import 'package:work_ui/widgets/text_widget.dart';

class TryDemo extends StatelessWidget {
  const TryDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .09,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xffFA8F82).withOpacity(.2),
          border: Border.all(
              width: MediaQuery.of(context).size.width * 0.009,
              color: const Color(0xffE77729))),
      child: Padding(
          padding: const EdgeInsets.only(left: 19.0, top: 16),
          child: TextWidget(
              text: "Try Demo",
              font_color: Colors.white,
              font_size: MediaQuery.of(context).size.width * 0.075,
              fontWeight: FontWeight.w600)),
    );
  }
}
