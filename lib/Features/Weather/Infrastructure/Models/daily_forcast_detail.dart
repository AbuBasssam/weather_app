class DailyForcastDetail {
  final String? image;
  final double temp;
  final double minTemp;
  final double maxTemp;
  final String weatherCondition;

  DailyForcastDetail(
      {this.image,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherCondition});
  // Factory method for creating an empty instance
  factory DailyForcastDetail.empty() {
    return DailyForcastDetail(
      temp: 0,
      maxTemp: 0,
      minTemp: 0,
      weatherCondition: '',
      image: null,
    );
  }
}
