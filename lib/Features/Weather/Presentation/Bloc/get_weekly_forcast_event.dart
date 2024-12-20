part of 'get_weekly_forcast_bloc.dart';

@immutable
sealed class GetWeeklyForcastBlocEvent {}

class GetWeeklyForcastEvent extends GetWeeklyForcastBlocEvent {
  final String cityName;

  GetWeeklyForcastEvent({required this.cityName});
}

class RefershWeeklyForcastEvent extends GetWeeklyForcastBlocEvent {
  final String cityName;

  RefershWeeklyForcastEvent({required this.cityName});
}

class GetSavedWeeklyForcastEvent extends GetWeeklyForcastBlocEvent {}
