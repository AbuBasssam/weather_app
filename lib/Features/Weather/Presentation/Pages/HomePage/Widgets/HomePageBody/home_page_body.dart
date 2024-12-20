import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Features/Weather/Presentation/Pages/HomePage/Widgets/HomePageBuilder/home_page_builder.dart';
import '../../../../Bloc/get_weekly_forcast_bloc.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<WeatherBloc>(context).add(GetSavedWeeklyForcastEvent());
    return const HomePageBuilder();
  }
}
