import 'package:demo_dio_retrofit/clean_architecture/data/models/weather_model.dart';
import 'package:demo_dio_retrofit/clean_architecture/domain/entities/weather_entity.dart';

class WeatherAdapter {
  static WeatherEntity fromApiResponse(WeatherModel model) {
    return WeatherEntity(
      coord: CoordEntity(
        lon: model.coord?.lon,
        lat: model.coord?.lat,
      ),
      weather: model.weather?.map((weather) => WeatherDetailEntity(
        id: weather.id,
        main: weather.main,
        description: weather.description,
        icon: weather.icon,
      )).toList(),
      base: model.base,
      main: MainEntity(
        temp: model.main?.temp,
        feelsLike: model.main?.feelsLike,
        tempMin: model.main?.tempMin,
        tempMax: model.main?.tempMax,
        pressure: model.main?.pressure,
        humidity: model.main?.humidity,
        seaLevel: model.main?.seaLevel,
        grndLevel: model.main?.grndLevel,
      ),
      visibility: model.visibility,
      wind: WindEntity(
        speed: model.wind?.speed,
        deg: model.wind?.deg,
        gust: model.wind?.gust,
      ),
      rain: RainEntity(d1h: model.rain?.d1h),
      clouds: CloudsEntity(all: model.clouds?.all),
      dt: model.dt,
      sys: SysEntity(
        type: model.sys?.type,
        id: model.sys?.id,
        country: model.sys?.country,
        sunrise: model.sys?.sunrise,
        sunset: model.sys?.sunset,
      ),
      timezone: model.timezone,
      id: model.id,
      name: model.name,
      cod: model.cod,
    );
  }
}