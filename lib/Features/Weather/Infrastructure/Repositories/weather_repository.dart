import '../../../../Core/exceptions.dart';
import '../../../../Core/result.dart';
import '../../Domain/Abstracts/network_info.dart';
import '../../Domain/Abstracts/weather_local_data_source.dart';
import '../../Domain/Abstracts/weather_remote_data_source.dart';
import '../../Domain/Abstracts/weather_repository.dart';
import '../../Domain/Entities/weather.dart';

class WeatherRepository implements IWeatherRepository {
  final IWeatherRemoteDataSource remoteDataSource;
  final IWeatherLocalDataSource localDataSource;
  final INetworkInfo networkInfo;

  WeatherRepository(
      {required this.remoteDataSource,
      required this.localDataSource,
      required this.networkInfo});

  @override
  Future<Result<Weather>> getWeeklyForcast({required String cityName}) async =>
      await networkInfo.isConnected
          ? _fetchRemoteWeatherForcast(cityName: cityName)
          : Result.fail([noInternetException]);

  @override
  Future<Result<Weather>> getCachedWeatherForcast() async =>
      await localDataSource.getCachedDetails();

  Future<Result<Weather>> _fetchRemoteWeatherForcast(
      {required String cityName}) async {
    var response = await remoteDataSource.getWeeklyForcast(cityName: cityName);

    if (response.succeeded) {
      await localDataSource.cachWeatherDetails(response.data as Weather);
    }

    return response;
  }
}
