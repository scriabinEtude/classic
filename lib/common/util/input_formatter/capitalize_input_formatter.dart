import 'package:classic/common/util/input_formatter/simple_formatter.dart';
import 'package:classic/common/util/string_util.dart';

class CapitalizeInputFormatter extends SimpleFormatter {
  @override
  String format(String newValue) => newValue.capitalize;
}
