import 'package:flutter/material.dart';
import '../max_temp_text_widget.dart';
import '../up_arrow_icon_widget.dart';

class MaxTempWidget extends StatelessWidget {
  final int maxTemp;
  const MaxTempWidget({super.key, required this.maxTemp});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const UpArrowIconWidget(),
      MaxTempTextWidget(maxTemp: maxTemp)
    ]);
  }
}
