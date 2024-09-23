// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/services/weather_service.dart' as _i6;
import '../domain/repositories/weather_repository.dart' as _i5;
import '../domain/usecases/get_weather_usecase.dart' as _i4;
import '../presentation/cubit/weather_cubit.dart' as _i7;
import 'di.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.GetWeatherUseCase>(
      () => registerModule.getWeatherUseCase);
  gh.lazySingleton<_i5.WeatherRepository>(
      () => registerModule.weatherRepository);
  gh.lazySingleton<_i6.WeatherService>(() => registerModule.weatherService);
  gh.factory<_i7.WeatherCubit>(
      () => _i7.WeatherCubit(get<_i6.WeatherService>()));
  return get;
}

class _$RegisterModule extends _i8.RegisterModule {}
