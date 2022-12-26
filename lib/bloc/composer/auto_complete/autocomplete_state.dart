import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/model/composer.dart';
import 'package:classic/data/model/music.dart';
import 'package:classic/data/model/musical_form.dart';
import 'package:classic/data/model/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'autocomplete_state.freezed.dart';

@freezed
class AutoCompleteState with _$AutoCompleteState {
  factory AutoCompleteState({
    required Status status,
    @Default([]) List<Composer> composers,
    Composer? composer,
    @Default([]) List<MusicalForm> musicalForms,
    MusicalForm? musicalForm,
    @Default([]) List<Music> musics,
    Music? music,
    @Default([]) List<Player> players,
    Player? player,
  }) = _AutoCompleteState;
}
