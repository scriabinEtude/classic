import 'package:classic/data/model/music.dart';
import 'package:classic/presentation/widget/autocomplete/data/mixin_autocompletable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'musical_form.freezed.dart';
part 'musical_form.g.dart';

@freezed
class MusicalForm with _$MusicalForm, Autocompletable {
  MusicalForm._();

  factory MusicalForm({
    required String name,
    required String engName,
    @Default([]) List<Music> musics,
  }) = _MusicalForm;

  factory MusicalForm.fromJson(Map<String, dynamic> json) =>
      _$MusicalFormFromJson(json);

  String get id => engName;

  @override
  String displayString() => "$name - $engName";

  @override
  Widget? displayWidget() => null;

  @override
  bool isMatch(String inputText) {
    return "$name$engName"
        .replaceAll(r"[^가-힣a-zA-Z]", "")
        .toLowerCase()
        .contains(inputText.toLowerCase());
  }
}
