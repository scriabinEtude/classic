import 'package:classic/common/util/string_util.dart';

abstract class FormTextInitValue {
  bool get readOnly;
  String get initialValue;
  String? get helperText;
}

class InitValueKor extends FormTextInitValue {
  final String value;
  late final bool validate = value.isKor;
  InitValueKor(this.value);

  @override
  String get initialValue => validate ? value : "";

  @override
  bool get readOnly => validate;

  @override
  String? get helperText => validate ? "이름을 변경하려면 다시 검색해 주십시오" : "";
}

class InitValueNotKor extends FormTextInitValue {
  final String value;
  late final bool validate = !value.isKor;
  InitValueNotKor(this.value);

  @override
  String get initialValue => validate ? value.capitalize : "";

  @override
  bool get readOnly => validate;

  @override
  String? get helperText => validate ? "이름을 변경하려면 다시 검색해 주십시오" : "";
}
