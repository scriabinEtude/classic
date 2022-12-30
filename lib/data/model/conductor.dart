import 'package:classic/presentation/widget/autocomplete/data/autocompletable.dart';
import 'package:classic/presentation/widget/autocomplete/util/match_util.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conductor.freezed.dart';
part 'conductor.g.dart';

@freezed
class Conductor with _$Conductor, Autocompletable {
  Conductor._();
  factory Conductor({
    required String name,
    required String fullname,
    required String engFullname,
    required String engName,
    required DateTime createdAt,
  }) = _Conductor;

  factory Conductor.fromJson(Map<String, dynamic> json) =>
      _$ConductorFromJson(json);

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

  factory Conductor.test() => Conductor(
        name: 'name',
        fullname: 'fullname',
        engFullname: 'engFullname',
        engName: 'engName',
        createdAt: DateTime.now(),
      );
}
