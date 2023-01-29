import 'package:classic/common/util/input_formatter/simple_formatter.dart';

class NumberOnlyInputFormatter extends SimpleFormatter {
  @override
  String format(String newValue) => newValue.replaceAll(RegExp(r'[^0-9]'), "");
}
