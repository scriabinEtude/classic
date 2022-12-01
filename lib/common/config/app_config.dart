enum AppConfigType { dev }

class AppConfig {
  final AppConfigType type;
  final String baseUrl;
  final String mongoUri;

  AppConfig({
    required this.type,
    required this.baseUrl,
    required this.mongoUri,
  });
}
