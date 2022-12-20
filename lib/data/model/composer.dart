import 'package:classic/common/imports.dart';
import 'package:classic/data/model/musical_form.dart';
import 'package:classic/presentation/widget/autocomplete/data/mixin_autocompletable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'composer.freezed.dart';
part 'composer.g.dart';

@freezed
class Composer with _$Composer, Autocompletable {
  Composer._();

  factory Composer({
    required String name,
    required String fullname,
    required String engName,
    required String engFullname,
    @Default([]) List<String> names,
    @Default([]) List<MusicalForm> musicalForms,
    @Default([]) List<String> thanksto,
    required DateTime createdAt,
  }) = _Composer;

  factory Composer.fromJson(Map<String, dynamic> json) =>
      _$ComposerFromJson(json);

  String get id => engFullname.replaceAll(" ", "");

  @override
  String displayString() => "$name - $engFullname";

  @override
  Widget? displayWidget() => null;

  @override
  bool isMatch(String inputText) {
    return "$name$fullname$engName$engFullname"
        .replaceAll(r"[^가-힣a-zA-Z]", "")
        .toLowerCase()
        .contains(inputText.toLowerCase());
  }

  static List<Composer> testSet() {
    return [
      Composer(
          name: '쇼팽',
          fullname: '프레데릭 쇼팽',
          engName: "asd",
          engFullname: "asd qwe",
          createdAt: DateTime.now()),
      Composer(
          name: '베토벤',
          fullname: '루트비히 판 베토벤',
          engName: "asd",
          engFullname: "asd qwe",
          createdAt: DateTime.now()),
      Composer(
          name: '바흐',
          fullname: '요한 세바스티안 바흐',
          engName: "asd",
          engFullname: "asd qwe",
          createdAt: DateTime.now()),
      Composer(
          name: '라흐마니노프',
          fullname: '라흐마니노프',
          engName: "asd",
          engFullname: "asd qwe",
          createdAt: DateTime.now())
    ];
  }
}
