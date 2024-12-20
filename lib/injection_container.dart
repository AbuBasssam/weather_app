import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'Core/network_info.dart';
import 'Features/Weather/Domain/Abstracts/network_info.dart';
import 'Features/Weather/Domain/Abstracts/weather_local_data_source.dart';
import 'Features/Weather/Domain/Abstracts/weather_remote_data_source.dart';
import 'Features/Weather/Domain/Abstracts/weather_repository.dart';
import 'Features/Weather/Domain/UseCases/weather_usecase.dart';
import 'Features/Weather/Infrastructure/DataSource/weather_local_data_source.dart';
import 'Features/Weather/Infrastructure/DataSource/weather_remote_data_source.dart';
import 'Features/Weather/Infrastructure/Repositories/weather_repository.dart';
import 'Features/Weather/Presentation/Bloc/get_weekly_forcast_bloc.dart';

final sl = GetIt.instance;
Future<void> init() async {
  ///Features - Weather

  //Block
  sl.registerFactory(() => WeatherBloc(cases: sl()));
  //sl.registerFactory(()=>PostCommandsBloc(cases: sl()));

  //UseCase
  sl.registerLazySingleton(
      () => WeatherUsecase(repo: sl<IWeatherRepository>()));

  //Repositories

  sl.registerLazySingleton(() => WeatherRepository(
      remoteDataSource: sl<IWeatherRemoteDataSource>(),
      localDataSource: sl<IWeatherLocalDataSource>(),
      networkInfo: sl<INetworkInfo>()));

  sl.registerLazySingleton<IWeatherRepository>(() => WeatherRepository(
      remoteDataSource: sl(), localDataSource: sl(), networkInfo: sl()));

  //DataSource
  sl.registerLazySingleton<IWeatherRemoteDataSource>(
      () => WeatherRemoteDataSource(client: sl()));

  sl.registerLazySingleton<IWeatherLocalDataSource>(
      () => WeatherLocalDataSource(sharedPreferences: sl()));

  ///Core
  sl.registerLazySingleton<INetworkInfo>(
      () => NetworkInfo(connectionChecker: sl()));

  ///External
  final sharedPreferences = await SharedPreferences.getInstance();

  sl.registerLazySingleton(() => sharedPreferences);

  sl.registerLazySingleton(() => http.Client());

  sl.registerLazySingleton(() => InternetConnectionChecker());
}
