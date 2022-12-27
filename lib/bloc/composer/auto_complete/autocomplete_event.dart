import 'package:classic/data/model/composer.dart';
import 'package:classic/data/model/conductor.dart';
import 'package:classic/data/model/music.dart';
import 'package:classic/data/model/musical_form.dart';
import 'package:classic/data/model/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'autocomplete_event.freezed.dart';

@freezed
class AutoCompleteEvent with _$AutoCompleteEvent {
  factory AutoCompleteEvent.getComposers() = AutoCompleteEventGetComposer;
  factory AutoCompleteEvent.add(Composer composer) = AutoCompleteEventAdd;
  factory AutoCompleteEvent.select(Composer composer) = AutoCompleteEventSelect;
  factory AutoCompleteEvent.selectMusicalForm(MusicalForm musicalForm) =
      AutoCompleteEventSelectMusicalForm;

  factory AutoCompleteEvent.updateMusicalForm(
          String composerId, MusicalForm musicalForm) =
      AutoCompleteEventUpdateMusicalForm;
  factory AutoCompleteEvent.selectMusic(Music music) =
      AutoCompleteEventSelectMusic;

  factory AutoCompleteEvent.updateMusic(
          String composerId, String musicalFormId, Music music) =
      AutoCompleteEventUpdateMusic;

  factory AutoCompleteEvent.getPlayers() = AutoCompleteEventGetPlayers;
  factory AutoCompleteEvent.selectPlayer(Player player) =
      AutoCompleteEventSelectPlayer;

  factory AutoCompleteEvent.getConductors() = AutoCompleteEventGetConductors;
  factory AutoCompleteEvent.selectConductor(Conductor conductor) =
      AutoCompleteEventSelectConductor;

  factory AutoCompleteEvent.resetSelect() = AutoCompleteEventResetSelect;
}
