import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:weather_app/Core/error.dart';
import '../../../../Core/result.dart';
import '../../../../generated/l10n.dart';
import '../../Domain/Abstracts/weather_remote_data_source.dart';
import '../../Domain/Entities/weather.dart';
import '../Models/weather_model.dart';
import 'package:http/http.dart' as http;

const baseURL = 'https://api.weatherapi.com/v1';
const apiKey = '69d0bec562174a2e810110142241312';

class WeatherRemoteDataSource implements IWeatherRemoteDataSource {
  final http.Client client;

  WeatherRemoteDataSource({required this.client});

  @override
  Future<Result<Weather>> getWeeklyForcast({required String cityName}) async {
    try {
      var requestURL =
          '$baseURL/forecast.json?key=$apiKey&q=$cityName&days=7&lang=${Intl.getCurrentLocale()}';

      Uri url = Uri.parse(requestURL);

      http.Response response = await http.get(url);

      return _result(response);
    } catch (e) {
      // Handle exceptions like network errors
      Error errorDetails = Error(
        'Error',
        S.current.uncatched_exception,
      );

      // Return failure result
      return Result.fail<Weather>([errorDetails]);
    }
  }

  Result<Weather> _result(http.Response response) {
    return response.statusCode == 200
        ? _successResponseHandler(response)
        : _errorResponseHandler(response);
  }

  Result<Weather> _successResponseHandler(http.Response response) {
    String decodeBody = utf8.decode(response.bodyBytes);

    Map<String, dynamic> data = jsonDecode(decodeBody);

    WeatherModel model = WeatherModel.fromJson(data);

    Weather weather = _mapModelToEntity(model);

    return Result.success<Weather>(weather);
  }

  Result<Weather> _errorResponseHandler(http.Response response) {
    var data = jsonDecode(response.body);

    // Extract HTTP status code
    int code = response.statusCode;
    int errorCode = data['error']['code'];
    // Extract error message from the JSON
    String description = _mapErrorConditions(errorCode);

    // Wrap extracted data into an IdentityError
    Error errorDetails = Error(code.toString(), description);

    // Return a failure IdentityResult with the error details
    return Result.fail<Weather>([errorDetails]);
  }

  Weather _mapModelToEntity(WeatherModel model) {
    return Weather(
        cityName: model.cityName,
        date: model.date,
        weeklyForcast: model.weeklyForcast);
  }

  String _mapErrorConditions(int errorCode) {
    Map<int, String> errorCodes = {
      1003: S.current.bad_request_1003_error,
      1005: S.current.bad_request_1005_error,
      1006: S.current.bad_request_1006_error,
      9000: S.current.bad_request_9000_error,
      9001: S.current.bad_request_9001_error,
      9999: S.current.bad_request_9999_error,
      1002: S.current.unauthorized_1002,
      2006: S.current.unauthorized_2006,
      2007: S.current.forbidden_2007_error,
      2008: S.current.forbidden_2008_error,
      2009: S.current.forbidden_2009_error,
    };

    return errorCodes[errorCode] ?? 'Unknown error code: $errorCode';
  }
}
