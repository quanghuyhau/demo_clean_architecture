
import 'package:demo_dio_retrofit/clean_architecture/data/services/weather_service.dart';
import 'package:demo_dio_retrofit/clean_architecture/domain/entities/weather_entity.dart';
import 'package:demo_dio_retrofit/clean_architecture/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherService service;

  WeatherRepositoryImpl(this.service);

  @override
  Future<WeatherEntity> getWeather(String cityName, String apiKey, String units) async {
    final weatherModel = await service.getWeather(cityName, apiKey, units);
    return WeatherEntity(
      coord: CoordEntity(lon: weatherModel.coord?.lon, lat: weatherModel.coord?.lat),
      weather: weatherModel.weather?.map((weather) => WeatherDetailEntity(
        id: weather.id,
        main: weather.main,
        description: weather.description,
        icon: weather.icon,
      )).toList(),
      base: weatherModel.base,
      main: MainEntity(
        temp: weatherModel.main?.temp,
        feelsLike: weatherModel.main?.feelsLike,
        tempMin: weatherModel.main?.tempMin,
        tempMax: weatherModel.main?.tempMax,
        pressure: weatherModel.main?.pressure,
        humidity: weatherModel.main?.humidity,
        seaLevel: weatherModel.main?.seaLevel,
        grndLevel: weatherModel.main?.grndLevel,
      ),
      visibility: weatherModel.visibility,
      wind: WindEntity(
        speed: weatherModel.wind?.speed,
        deg: weatherModel.wind?.deg,
        gust: weatherModel.wind?.gust,
      ),
      rain: RainEntity(d1h: weatherModel.rain?.d1h),
      clouds: CloudsEntity(all: weatherModel.clouds?.all),
      dt: weatherModel.dt,
      sys: SysEntity(
        type: weatherModel.sys?.type,
        id: weatherModel.sys?.id,
        country: weatherModel.sys?.country,
        sunrise: weatherModel.sys?.sunrise,
        sunset: weatherModel.sys?.sunset,
      ),
      timezone: weatherModel.timezone,
      id: weatherModel.id,
      name: weatherModel.name,
      cod: weatherModel.cod,
    );
  }
}