import 'package:flutter_test/flutter_test.dart';

void main() {
  test('hasMatch', () {
    expect(RegExp(r'[a-zA-Z ]').hasMatch("awsd"), true);
    expect(RegExp(r'[a-zA-Z ]').hasMatch("a  ws d  "), true);
    expect(RegExp(r'[a-zA-Z ]').hasMatch("aADw dwddw  DW ed WD WDw d  "), true);
    expect(RegExp(r'[a-zA-Z ]').hasMatch(" dw_ddw  DW ed WD WDw d  "), true);
    expect(RegExp(r'[a-zA-Z ]').hasMatch("aADw   DW ed WD WD.w d  "), true);
  });
}
