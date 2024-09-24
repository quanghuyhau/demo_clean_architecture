// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:demo_dio_retrofit/clean_architecture/data/services/weather_service.dart'
    as _i6;
import 'package:demo_dio_retrofit/clean_architecture/di/di.dart' as _i8;
import 'package:demo_dio_retrofit/clean_architecture/domain/repositories/weather_repository.dart'
    as _i5;
import 'package:demo_dio_retrofit/clean_architecture/domain/usecases/get_weather_usecase.dart'
    as _i4;
import 'package:demo_dio_retrofit/clean_architecture/presentation/weather/cubit/weather_cubit.dart'
    as _i7;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
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
        () => _i7.WeatherCubit(gh<_i6.WeatherService>()));
    return this;
  }
}

class _$RegisterModule extends _i8.RegisterModule {}
