enum Environment { dev, test }

class Config {
  static Environment environment = Environment.dev;
  static String get baseUrl {
    switch (environment) {
      case Environment.dev:
        return 'https://api-dev.example.com';
      case Environment.test:
        return 'https://api-test.example.com';
    }
  }
}