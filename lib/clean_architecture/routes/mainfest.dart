import 'package:demo_dio_retrofit/clean_architecture/presentation/weather/ui/weather_screen.dart';
import 'package:flutter/material.dart';

class Manifest {
  static Map<String, WidgetBuilder> generateRoute() {
    return {
      '/': (context) => const WeatherScreen(),
    };
  }
}


// import 'package:demo_dio_retrofit/clean_architecture/presentation/weather/weather_route.dart';
// import 'package:demo_dio_retrofit/clean_architecture/routes/routes_define.dart';
//
// generateRoutes() {
//   WeatherRoute();
// }
//
// final Map<String, RouteDefine> mapRoutes = {};