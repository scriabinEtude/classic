import 'package:classic/common/util/input_formatter/simple_formatter.dart';

class KorOnlyInputFormatter extends SimpleFormatter {
  @override
  String format(String newValue) =>
      newValue.replaceAll(RegExp(r'[^ㄱ-ㅎ가-힣 ]'), '');
}
