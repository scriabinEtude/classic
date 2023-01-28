import 'package:classic/common/util/input_formatter/simple_formatter.dart';

class EngOnlyInputFormatter extends SimpleFormatter {
  @override
  String format(String newValue) =>
      newValue.replaceAll(RegExp(r'[^a-zA-Z -]'), '');
}
