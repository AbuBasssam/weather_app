import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../generated/l10n.dart';
import '../../../Bloc/get_weekly_forcast_bloc.dart';

// ignore: camel_case_types
class txtSearch extends StatelessWidget {
  const txtSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        onSubmitted: (value) {
          _getWeeklyForcast(value, context);

          Navigator.of(context).pop();
        },
        decoration: _txtSearchDecoration(context),
      ),
    );
  }

  InputDecoration _txtSearchDecoration(BuildContext context) {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      labelText: S.of(context).text_field_label_text,
      suffixIcon: const Icon(Icons.search),
      hintText: S.of(context).text_field_hint_text,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
    );
  }

  void _getWeeklyForcast(String value, BuildContext context) {
    String cityName = value;
    BlocProvider.of<WeatherBloc>(context)
        .add(GetWeeklyForcastEvent(cityName: cityName));
  }
}
