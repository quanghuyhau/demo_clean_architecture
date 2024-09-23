import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../models/weather_model.dart';

part 'weather_service.g.dart';

// @injectable
@RestApi(baseUrl: 'https://api.openweathermap.org/data/2.5')
abstract class WeatherService {
  factory WeatherService(Dio dio, {String baseUrl}) = _WeatherService;

  @GET('/weather')
  Future<WeatherModel> getWeather(
    @Query('q') String cityName,
    @Query('appid') String apiKey,
    @Query('units') String units,
  );
}
