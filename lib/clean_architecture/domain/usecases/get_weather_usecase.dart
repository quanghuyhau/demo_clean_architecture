import 'package:demo_dio_retrofit/clean_architecture/domain/entities/weather_entity.dart';
import 'package:demo_dio_retrofit/clean_architecture/domain/repositories/weather_repository.dart';
class GetWeatherUseCase {
  final WeatherRepository repository;

  GetWeatherUseCase(this.repository);

  Future<WeatherEntity> call(String cityName, String apiKey, String units) {
    return repository.getWeather(cityName, apiKey, units);
  }
}