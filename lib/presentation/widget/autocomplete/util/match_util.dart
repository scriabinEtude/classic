class MatchUtil {
  /// 나중에 몽고디비 fulltext 나 elastic으로 대체
  static bool factorMatcher(List<String> stringFactors, String input) {
    return normalize(stringFactors.join("")).contains(normalize(input));
  }

  static String normalize(String text) {
    return text.replaceAll(r"[^가-힣a-zA-Z]", "").toLowerCase();
  }
}
