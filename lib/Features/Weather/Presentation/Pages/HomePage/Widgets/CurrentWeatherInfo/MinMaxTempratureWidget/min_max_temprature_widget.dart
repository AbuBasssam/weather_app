import 'package:flutter/material.dart';
import 'max_temp_widget.dart';
import 'min_temp_widget.dart';

class MinMaxTempratureWidget extends StatelessWidget {
  final int min;
  final int max;

  const MinMaxTempratureWidget(
      {super.key, required this.min, required this.max});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaxTempWidget(maxTemp: max),
        const SizedBox(width: 8), // Space between the icons and text
        MinTempWidget(minTemp: min), // Min temperature
      ],
    );
  }
}
