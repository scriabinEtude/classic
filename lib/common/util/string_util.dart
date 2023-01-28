extension StringExtension on String {
  bool get isKor => RegExp(r'[가-힣]').hasMatch(this);

  String get capitalize {
    return split(' ')
        .map((text) {
          if (text.length > 1) {
            return text[0].toUpperCase() + text.substring(1).toLowerCase();
          } else if (text.length == 1) {
            return text[0].toUpperCase();
          }

          return '';
        })
        .toList()
        .join(' ');
  }
}
