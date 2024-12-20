import 'dart:collection';

class WeatherHelper {
  static String getDayOfWeek(DateTime date) {
    HashMap<int, String> daysMap = HashMap.from({
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday',
      7: 'Sunday',
    });

    // Return the corresponding day
    return daysMap[date.weekday] ?? 'Unknown';
  }
}
