import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/model/composer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'composer_autocomplete_state.freezed.dart';

@freezed
class ComposerAutoCompleteState with _$ComposerAutoCompleteState {
  factory ComposerAutoCompleteState({
    required Status status,
    @Default([]) List<Composer> composers,
  }) = _ComposerAutoCompleteState;
}
