import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Core/result.dart';
import '../../Domain/Entities/weather.dart';
import '../../Domain/UseCases/weather_usecase.dart';
part 'get_weekly_forcast_event.dart';
part 'get_weekly_forcast_state.dart';

class WeatherBloc
    extends Bloc<GetWeeklyForcastBlocEvent, GetWeeklyForcastState> {
  final WeatherUsecase cases;
  // final String cityName;

  WeatherBloc({required this.cases}) : super(WeeklyForcastInitial()) {
    on<GetWeeklyForcastBlocEvent>((event, emit) async {
      await _manageGetWeeklyForcastEvent(event, emit);
    });
  }

  Future<void> _manageGetWeeklyForcastEvent(GetWeeklyForcastBlocEvent event,
      Emitter<GetWeeklyForcastState> emit) async {
    if (event is GetWeeklyForcastEvent) {
      emit(LoadingWeeklyForcastState());

      final response = await cases.getWeeklyForcast(cityName: event.cityName);

      emit(_mapRespnseToState(response));
    } else if (event is RefershWeeklyForcastEvent) {
      emit(LoadingWeeklyForcastState());

      final response = await cases.getWeeklyForcast(cityName: event.cityName);

      emit(_mapRespnseToState(response));
    } else if (event is GetSavedWeeklyForcastEvent) {
      final response = await cases.getSavedWeeklyForcast();
      emit(_mapGetSavedWeeklyForcastEventToState(response));
    }
  }

  GetWeeklyForcastState _mapRespnseToState(Result<Weather> result) {
    return result.succeeded
        ? LoadedWeeklyForcastState(weather: result.data!)
        : ErrorWeeklyForcastState(message: result.toString());
  }

  GetWeeklyForcastState _mapGetSavedWeeklyForcastEventToState(
      Result<Weather> result) {
    return result.succeeded
        ? LoadedWeeklyForcastState(weather: result.data!)
        : WeeklyForcastInitial();
  }
}
