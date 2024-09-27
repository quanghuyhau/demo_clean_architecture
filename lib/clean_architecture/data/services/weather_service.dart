import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:flutter_alice/alice.dart';

import '../models/weather_model.dart';

part 'weather_service.g.dart';

@RestApi(baseUrl: 'https://api.openweathermap.org/data/2.5')
abstract class WeatherService {
  factory WeatherService(Dio dio, Alice alice) {
    dio.interceptors.add(alice.getDioInterceptor());
    return _WeatherService(dio);
  }

  @GET('/weather')
  Future<WeatherModel> getWeather(
    @Query('q') String cityName,
    @Query('appid') String apiKey,
    @Query('units') String units,
  );
}
