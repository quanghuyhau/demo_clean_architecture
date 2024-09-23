import 'package:demo_dio_retrofit/clean_architecture/domain/entities/weather_entity.dart';
abstract class WeatherRepository {
  Future<WeatherEntity> getWeather(String cityName, String apiKey, String units);
}