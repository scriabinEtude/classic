import 'package:classic/common/util/input_formatter/simple_formatter.dart';

class MaxLengthInputFormatter extends SimpleFormatter {
  final int maxLength;

  MaxLengthInputFormatter(this.maxLength);

  @override
  String format(String newValue) =>
      newValue.length > maxLength ? newValue.substring(0, maxLength) : newValue;
}
