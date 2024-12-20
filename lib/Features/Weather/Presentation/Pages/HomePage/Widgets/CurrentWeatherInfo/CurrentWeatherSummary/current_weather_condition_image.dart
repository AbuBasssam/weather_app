import 'package:flutter/material.dart';

class CurrentWeatherConditionImage extends StatelessWidget {
  final String imagePath;
  const CurrentWeatherConditionImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(imagePath, width: 40, height: 40, fit: BoxFit.cover);
  }
}
