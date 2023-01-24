enum AppConfigType { local, dev }

class AppConfig {
  final AppConfigType type;
  final String baseUrl;

  AppConfig({
    required this.type,
    required this.baseUrl,
  });
}
