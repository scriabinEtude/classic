import 'package:classic/presentation/widget/autocomplete/data/autocompletable.dart';
import 'package:classic/presentation/widget/autocomplete/util/match_util.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player with _$Player, Autocompletable {
  Player._();

  factory Player({
    required String name,
    required String fullname,
    required String engFullname,
    required String engName,
    required DateTime createdAt,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

  String get id => engFullname.replaceAll(" ", "");

  @override
  String displayString() => "$name - $engFullname";

  @override
  Widget? displayWidget() => null;

  @override
  bool isMatch(String inputText) {
    return MatchUtil.factorMatcher([
      name,
      fullname,
      engFullname,
      engName,
    ], inputText);
  }
}
