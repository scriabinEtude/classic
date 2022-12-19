/// [AppAutocomplete]에서 [option]값으로 사용하려면
/// 모델이 [Autocompletable]를 extends 해야 한다.
///
/// displayString 값이 화면에 보여지므로
/// subClass에서 displayString를 override한다.
abstract class Autocompletable {
  /// ### 목록에 보여지게될 문자열
  String displayString = 'do override this';

  /// ### `true`일 때 검색 결과로 보여준다.
  bool isMatch(String inputText);
}
