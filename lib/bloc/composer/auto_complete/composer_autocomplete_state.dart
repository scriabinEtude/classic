import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/model/composer.dart';
import 'package:classic/data/model/music.dart';
import 'package:classic/data/model/musical_form.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'composer_autocomplete_state.freezed.dart';

@freezed
class ComposerAutoCompleteState with _$ComposerAutoCompleteState {
  factory ComposerAutoCompleteState({
    required Status status,
    @Default([]) List<Composer> composers,
    Composer? composer,
    @Default([]) List<MusicalForm> musicalForms,
    MusicalForm? musicalForm,
    @Default([]) List<Music> musics,
    Music? music,
  }) = _ComposerAutoCompleteState;
}
