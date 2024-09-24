import 'package:demo_dio_retrofit/clean_architecture/data/repositories/weather_repository_impl.dart';
import 'package:demo_dio_retrofit/clean_architecture/data/services/weather_service.dart';
import 'package:demo_dio_retrofit/clean_architecture/domain/repositories/weather_repository.dart';
import 'package:demo_dio_retrofit/clean_architecture/domain/usecases/get_weather_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:demo_dio_retrofit/clean_architecture/di/di.config.dart';


final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  WeatherService get weatherService => WeatherService(dio);

  @lazySingleton
  WeatherRepository get weatherRepository => WeatherRepositoryImpl(weatherService);

  @lazySingleton
  GetWeatherUseCase get getWeatherUseCase => GetWeatherUseCase(weatherRepository);
}