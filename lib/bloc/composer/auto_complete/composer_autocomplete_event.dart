import 'package:classic/data/model/composer.dart';
import 'package:classic/data/model/music.dart';
import 'package:classic/data/model/musical_form.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'composer_autocomplete_event.freezed.dart';

@freezed
class ComposerAutoCompleteEvent with _$ComposerAutoCompleteEvent {
  factory ComposerAutoCompleteEvent.init() = ComposerAutoCompleteEventInit;
  factory ComposerAutoCompleteEvent.add(Composer composer) =
      ComposerAutoCompleteEventAdd;
  factory ComposerAutoCompleteEvent.select(Composer composer) =
      ComposerAutoCompleteEventSelect;
  factory ComposerAutoCompleteEvent.selectMusicalForm(MusicalForm musicalForm) =
      ComposerAutoCompleteEventSelectMusicalForm;

  factory ComposerAutoCompleteEvent.updateMusicalForm(
          String composerId, MusicalForm musicalForm) =
      ComposerAutoCompleteEventUpdateMusicalForm;
  factory ComposerAutoCompleteEvent.selectMusic(Music music) =
      ComposerAutoCompleteEventSelectMusic;

  factory ComposerAutoCompleteEvent.updateMusic(
          String composerId, String musicalFormId, Music music) =
      ComposerAutoCompleteEventUpdateMusic;

  factory ComposerAutoCompleteEvent.resetSelect() =
      ComposerAutoCompleteEventResetSelect;
}
