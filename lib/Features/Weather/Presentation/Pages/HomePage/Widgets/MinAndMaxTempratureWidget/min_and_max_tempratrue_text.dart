import 'package:flutter/material.dart';
import 'min_and_Max_temprature_widget.dart';

class MinAndMaxTempratrueWidget extends StatelessWidget {
  final int min;
  final int max;
  const MinAndMaxTempratrueWidget({
    super.key,
    required this.min,
    required this.max,
  });

  // final Weather weather;
  // final int index;

  @override
  Widget build(BuildContext context) {
    String minMaxTemprature = '${max.toString()}° / ${min.toString()}°';
    return MinAndMaxTempratureTextWidget(minAndMaxTemprature: minMaxTemprature);
  }
}
