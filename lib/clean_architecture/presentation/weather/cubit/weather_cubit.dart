import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:demo_dio_retrofit/clean_architecture/data/models/weather_model.dart';
import 'package:demo_dio_retrofit/clean_architecture/data/services/weather_service.dart';
import 'package:demo_dio_retrofit/clean_architecture/presentation/weather/cubit/weather_state.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@injectable
class WeatherCubit extends Cubit<WeatherState> {
  final WeatherService _weatherService;
  final Logger _logger = Logger();

  WeatherCubit(this._weatherService) : super(WeatherInitial());

  Future<void> fetchWeathers() async {
    emit(WeatherLoading());
    List<String> city = [
      'HaNoi',
      'London',
      'Tokyo',
      'DaNang',
      'BuSan',
      'Manchester',
      'NamDinh',
      "Eng"
    ];
    String apiKey = '4d79064f926b9bf10a96162219198ca2';
    List<WeatherModel> weathers = [];

    for (String city in city) {
      try {
        WeatherModel weather =
        await _weatherService.getWeather(city, apiKey, 'metric');
        weathers.add(weather);
        _logger.i(jsonEncode(weather));
        // print('------------------------ $city: ${jsonEncode(weather)}------------------------------------');
      } catch (e) {
        _logger.e('Lỗi ko call được api thời tiết trong thành phố $city: $e');
      }
    }

    emit(WeatherLoaded(weathers));
  }
}