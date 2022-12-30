class Validator {
  static String? korValidator(String? value, String label, String example) {
    if (value == null || value.isEmpty) {
      return "$label을 입력해 주세요. (예: $example)";
    } else if (RegExp(r'[^가-힣 ]').hasMatch(value)) {
      return "한글과 공백만 가능합니다 (자음, 모음 제외)";
    } else {
      return null;
    }
  }

  static String? engValidator(String? value, String label, String example) {
    if (value == null || value.isEmpty) {
      return "$label을 입력해 주세요. (예: $example)";
    } else if (RegExp(r'[^a-zA-Z -]').hasMatch(value)) {
      return "영어와 공백, 특수문자(-)만 가능합니다";
    } else {
      return null;
    }
  }

  static String? titleValidator(String? value, String label, String example) {
    if (value == null || value.isEmpty) {
      return "$label을 입력해 주세요. (예: $example)";
    } else if (RegExp(r'[^가-힣a-zA-Z.,-: ]').hasMatch(value)) {
      return "한글, 영어, .,-: 만 가능합니다";
    } else {
      return null;
    }
  }
}
