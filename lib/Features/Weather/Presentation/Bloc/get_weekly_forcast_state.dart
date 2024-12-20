part of 'get_weekly_forcast_bloc.dart';

@immutable
sealed class GetWeeklyForcastState {}

final class WeeklyForcastInitial extends GetWeeklyForcastState {}

class NoWeeklyForcastState extends GetWeeklyForcastState {}

class LoadingWeeklyForcastState extends GetWeeklyForcastState {}

class LoadedWeeklyForcastState extends GetWeeklyForcastState {
  final Weather weather;

  LoadedWeeklyForcastState({required this.weather});
}

class ErrorWeeklyForcastState extends GetWeeklyForcastState {
  final String message;

  ErrorWeeklyForcastState({required this.message});
}
