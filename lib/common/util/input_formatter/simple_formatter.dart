import 'package:flutter/services.dart';

abstract class SimpleFormatter extends TextInputFormatter {
  String format(String newValue);

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String value = format(newValue.text);
    return TextEditingValue(
      text: value,
      selection: TextSelection(
        baseOffset: value.length,
        extentOffset: value.length,
      ),
    );
  }
}
