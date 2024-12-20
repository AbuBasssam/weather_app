import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DayName extends StatelessWidget {
  //final DateTime date;
  final int index;
  final DateTime date;
  const DayName(
      {super.key,
      //required this.date,
      required this.index,
      required this.date});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16);
    return Text(_getDayName(), style: textStyle);
  }

  String _getDayName() {
    // return index == 0
    //     ? "Today"
    //     : DateFormat('EEEE').format(date.add(Duration(days: index)));

    return DateFormat('EEEE').format(date.add(Duration(days: index)));
  }
}
