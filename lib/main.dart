import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Features/Weather/Presentation/Bloc/get_weekly_forcast_bloc.dart';
import 'Features/Weather/Presentation/Pages/HomePage/home_page.dart';
import 'generated/l10n.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => di.sl<WeatherBloc>(),
        child: BlocBuilder<WeatherBloc, GetWeeklyForcastState>(
            builder: _materialAppBuilder));
  }

  Widget _materialAppBuilder(context, state) {
    // Set the theme color based on the WeatherBloc state
    MaterialColor themeColor;
    themeColor = state is LoadedWeeklyForcastState
        ? state.weather.getThemeColor()
        : themeColor = Colors.blue;
    return MaterialApp(
      localizationsDelegates: _getlocalizationsDelegates,
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: themeData(themeColor),
      home: const HomePage(),
    );
  }

  List<LocalizationsDelegate<dynamic>> get _getlocalizationsDelegates {
    return const [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
  }

  ThemeData themeData(MaterialColor themeColor) {
    return ThemeData(
      primarySwatch: themeColor,
      appBarTheme: AppBarTheme(
        backgroundColor: themeColor,
        foregroundColor: Colors.white, // Ensures contrast for text/icons
      ),
    );
  }
}
