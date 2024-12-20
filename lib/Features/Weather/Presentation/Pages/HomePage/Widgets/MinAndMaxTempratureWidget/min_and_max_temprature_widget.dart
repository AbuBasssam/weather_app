import 'package:flutter/material.dart';

class MinAndMaxTempratureTextWidget extends StatelessWidget {
  final String minAndMaxTemprature;

  const MinAndMaxTempratureTextWidget({
    super.key,
    required this.minAndMaxTemprature,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
    return Text(
      minAndMaxTemprature,
      style: textStyle,
    );
  }
}
