import 'package:flutter/material.dart';

class ConditionImageItem extends StatelessWidget {
  final double cotainerItemWidth;
  final String imagePath;
  const ConditionImageItem(
      {super.key, required this.cotainerItemWidth, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cotainerItemWidth,
      child: Center(child: _getConditionImage()),
    );
  }

  Image _getConditionImage() {
    return Image.asset(
      imagePath,
      width: 30,
      height: 30,
    );
  }
}
