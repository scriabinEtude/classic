import 'package:flutter_test/flutter_test.dart';
import 'package:classic/common/util/string_util.dart';

void main() {
  test('string util', () {
    expect("이름".isKor, true);
    expect("asd이름".isKor, true);
    expect("asdrㄱ름".isKor, true);
    expect("asasd".isKor, false);
  });
}
