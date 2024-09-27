import 'package:demo_dio_retrofit/clean_architecture/data/adapter/weather_adapter.dart';
import 'package:demo_dio_retrofit/clean_architecture/data/services/weather_service.dart';
import 'package:demo_dio_retrofit/clean_architecture/domain/entities/weather_entity.dart';
import 'package:demo_dio_retrofit/clean_architecture/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherService service;

  WeatherRepositoryImpl(this.service);

  @override
  Future<WeatherEntity> getWeather(
      String cityName, String apiKey, String units) async {
    final weatherModel = await service.getWeather(cityName, apiKey, units);
    return WeatherAdapter.fromApiResponse(weatherModel);
  }
}
