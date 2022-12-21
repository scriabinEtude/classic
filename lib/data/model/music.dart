import 'package:classic/data/model/link.dart';
import 'package:classic/presentation/widget/autocomplete/data/mixin_autocompletable.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'music.freezed.dart';
part 'music.g.dart';

@freezed
class Music with _$Music, Autocompletable {
  Music._();

  factory Music({
    required String title,
    required String subTitle,
    @Default([]) List<Link> links,
  }) = _Music;

  factory Music.fromJson(Map<String, dynamic> json) => _$MusicFromJson(json);

  @override
  String displayString() => '$title - $subTitle';

  @override
  Widget? displayWidget() => null;

  @override
  bool isMatch(String inputText) => '$title$subTitle'
      .replaceAll(r"[^가-힣a-zA-Z]", "")
      .toLowerCase()
      .contains(inputText.toLowerCase());
}
