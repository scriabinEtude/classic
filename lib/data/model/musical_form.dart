import 'package:classic/data/model/music.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'musical_form.freezed.dart';
part 'musical_form.g.dart';

@freezed
class MusicalForm with _$MusicalForm {
  factory MusicalForm({
    required String name,
    @Default([]) List<Music> musics,
  }) = _MusicalForm;

  factory MusicalForm.fromJson(Map<String, dynamic> json) =>
      _$MusicalFormFromJson(json);
}
