import 'package:classic/common/util/input_formatter/simple_formatter.dart';

class ContinueSpaceInputFormatter extends SimpleFormatter {
  @override
  String format(String newValue) => newValue.replaceAll('  ', ' ');
}

class ContinueDashInputFormatter extends SimpleFormatter {
  @override
  String format(String newValue) => newValue.replaceAll('--', '-');
}
