import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../Core/widgets/loading_widget.dart';
import '../../../../Bloc/get_weekly_forcast_bloc.dart';
import '../WeatherWidget/weather_widget.dart';
import '../MessageDisplayWidget/message_display_widget.dart';
import 'intial_view_widget.dart';

class HomePageBuilder extends StatelessWidget {
  const HomePageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, GetWeeklyForcastState>(
        builder: (context, state) => _manageBuilder(state, context));
  }

  Widget _manageBuilder(GetWeeklyForcastState state, BuildContext context) {
    if (state is WeeklyForcastInitial) {
      return const IntialViewWidget();
    } else if (state is LoadingWeeklyForcastState) {
      return const LoadingWidget();
    } else if (state is LoadedWeeklyForcastState) {
      return RefreshIndicator(
          onRefresh: () => _onRefersh(context, state.weather.cityName),
          child: WeatherWidget(weather: state.weather));
    } else if (state is ErrorWeeklyForcastState) {
      return MessageDisplayWidget(
          message: state.message,
          onDialogClosed: () => _callSavedWeeklyForcastState(context));
    }
    return const LoadingWidget();
  }

  Future<void> _onRefersh(BuildContext context, String cityName) async {
    BlocProvider.of<WeatherBloc>(context)
        .add(RefershWeeklyForcastEvent(cityName: cityName));
  }

  void _callSavedWeeklyForcastState(BuildContext context) {
    BlocProvider.of<WeatherBloc>(context).add(GetSavedWeeklyForcastEvent());
  }
}
