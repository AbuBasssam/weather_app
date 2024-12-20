import 'package:flutter/material.dart';
import 'package:weather_app/Features/Weather/Presentation/Pages/HomePage/Widgets/MinAndMaxTempratureWidget/min_and_max_tempratrue_text.dart';

class TempratureItemWidget extends StatelessWidget {
  const TempratureItemWidget({
    super.key,
    required this.itemWidth,
    required this.min,
    required this.max,
  });

  final double itemWidth;
  final int min;
  final int max;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: itemWidth,
      child: Center(
        child: MinAndMaxTempratrueWidget(
          min: min,
          max: max,
        ),
      ),
    );
  }
}
