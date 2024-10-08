enum Environment { dev, test }

class Config {
  static Environment environment = Environment.dev;
  static String get baseUrl {
    switch (environment) {
      case Environment.dev:
        return 'dev';
      case Environment.test:
        return 'test';
    }
  }
}