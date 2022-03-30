import 'package:flutter/material.dart';

import 'package:work_ui/widgets/text_widget.dart';

class FixedSiteTitleWidget extends StatelessWidget {
  const FixedSiteTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 18),
        width: double.infinity,
        child: TextWidget(
            text: "Check This out",
            font_color: Colors.white,
            font_size: MediaQuery.of(context).size.height * 0.03,
            fontWeight: FontWeight.w600));
  }
}
