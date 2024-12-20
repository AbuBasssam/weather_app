import 'package:flutter/material.dart';
import '../../../../../Domain/Entities/weather.dart';
import 'condition_image_item.dart';
import 'day_name_column_item.dart';
import 'temprature_item_widget.dart';

class DailyForcastDetails extends StatelessWidget {
  final Weather weather;
  final int index;

  const DailyForcastDetails({
    super.key,
    required this.weather,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent, // Transparent background
      elevation: 0,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        title: LayoutBuilder(
          builder: (context, constraints) {
            final itemWidth = constraints.maxWidth / 3;

            return Row(
              children: [
                // Day Name
                DayNameColumnItem(
                    itemWidth: itemWidth, weather: weather, index: index),
                // Condition Image
                ConditionImageItem(
                  cotainerItemWidth: itemWidth,
                  //imageIndex: index,
                  imagePath: weather.weeklyForcast[index].image!,
                ),
                // Temperature Widget
                TempratureItemWidget(
                    itemWidth: itemWidth,
                    min: weather.weeklyForcast[index].minTemp.toInt(),
                    max: weather.weeklyForcast[index].maxTemp.toInt()),
              ],
            );
          },
        ),
      ),
    );
  }
}
