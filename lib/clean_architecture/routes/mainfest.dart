import 'package:demo_dio_retrofit/clean_architecture/presentation/ui/weather_screen.dart';
import 'package:flutter/material.dart';

class Manifest {
  static Map<String, WidgetBuilder> generateRoute() {
    return {
      '/': (context) => const WeatherScreen(),
    };
  }
}