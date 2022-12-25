import 'package:classic/data/model/link.dart';
import 'package:classic/presentation/widget/autocomplete/data/autocompletable.dart';
import 'package:classic/presentation/widget/autocomplete/util/match_util.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'music.freezed.dart';
part 'music.g.dart';

@Freezed(equal: false)
class Music extends Equatable with _$Music, Autocompletable {
  Music._();

  factory Music({
    required String composerId,
    required String musicalFormId,
    required String title,
    required String subTitle,
    @Default([]) List<Link> links,
  }) = _Music;

  factory Music.fromJson(Map<String, dynamic> json) => _$MusicFromJson(json);

  String get id => "$musicalFormId${title..replaceAll(r"[^가-힣a-zA-Z]", "")}";

  @override
  String displayString() => '$title - $subTitle';

  @override
  Widget? displayWidget() => null;

  @override
  bool isMatch(String inputText) {
    return MatchUtil.factorMatcher([
      title,
      subTitle,
    ], inputText);
  }

  @override
  List<Object?> get props => [
        title.replaceAll(r"[^가-힣a-zA-Z]", ""),
      ];
}
