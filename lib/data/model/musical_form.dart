import 'package:classic/data/model/music.dart';
import 'package:classic/presentation/widget/autocomplete/data/autocompletable.dart';
import 'package:classic/presentation/widget/autocomplete/util/match_util.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'musical_form.freezed.dart';
part 'musical_form.g.dart';

@freezed
class MusicalForm with _$MusicalForm, Autocompletable {
  MusicalForm._();

  factory MusicalForm({
    required String composerId,
    required String name,
    required String engName,
    @Default([]) List<Music> musics,
  }) = _MusicalForm;

  factory MusicalForm.fromJson(Map<String, dynamic> json) =>
      _$MusicalFormFromJson(json);

  String get id => "$composerId$engName";

  @override
  String displayString() => "$name - $engName";

  @override
  Widget? displayWidget() => null;

  @override
  bool isMatch(String inputText) {
    return MatchUtil.factorMatcher([
      name,
      engName,
    ], inputText);
  }

  factory MusicalForm.test() => MusicalForm(
        composerId: 'composerId',
        name: 'name',
        engName: 'engName',
      );
}
