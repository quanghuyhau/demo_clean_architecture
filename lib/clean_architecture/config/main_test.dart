import 'package:demo_dio_retrofit/clean_architecture/config/environment.dart';
import 'package:demo_dio_retrofit/main.dart' as app;

void main() {
  Config.environment = Environment.test;
  app.main();
}