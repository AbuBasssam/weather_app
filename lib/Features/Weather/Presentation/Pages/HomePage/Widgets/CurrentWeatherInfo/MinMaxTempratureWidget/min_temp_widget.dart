import 'package:flutter/material.dart';
import '../down_arrow_icon_widget.dart';
import '../min_temp_text_widget.dart';

class MinTempWidget extends StatelessWidget {
  final int minTemp;
  const MinTempWidget({super.key, required this.minTemp});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const DownArrowIconWidget(),
      MinTempTextWidget(minTemp: minTemp)
    ]);
  }
}
