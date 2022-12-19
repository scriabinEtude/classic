import 'package:classic/data/model/composer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'composer_autocomplete_event.freezed.dart';

@freezed
class ComposerAutoCompleteEvent with _$ComposerAutoCompleteEvent {
  factory ComposerAutoCompleteEvent.init() = ComposerAutoCompleteEventInit;
  factory ComposerAutoCompleteEvent.add(Composer composer) =
      ComposerAutoCompleteEventAdd;
}
