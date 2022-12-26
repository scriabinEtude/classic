class MatchUtil {
  static bool factorMatcher(List<String> stringFactors, String input) {
    // 나중에 몽고디비 fulltext 나 elastic으로 대체

    final splitedInput = input
        .replaceAll(r"[^가-힣a-zA-Z]", " ")
        .toLowerCase()
        .split(" ")
        .where((element) => element != " ");

    for (String factor in stringFactors) {
      for (String input in splitedInput) {
        if (factor.toLowerCase().contains(input)) return true;
      }
    }

    return false;

    // return normalize(stringFactors.join("")).contains(normalize(input));
  }

  static String normalize(String text) {
    return text.replaceAll(r"[^가-힣a-zA-Z]", "").toLowerCase();
  }
}
