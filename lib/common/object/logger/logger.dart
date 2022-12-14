import 'package:logger/logger.dart' as flutter_logger;

final l = Logger();

class Logger extends flutter_logger.Logger {
  Logger()
      : super(
            printer: flutter_logger.PrettyPrinter(
          methodCount: 0,
          noBoxingByDefault: true,
        ));

  void dl(
    String label,
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) {
    super.d("$label => $message", error, stackTrace);
  }
}
