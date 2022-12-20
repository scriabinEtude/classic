import 'package:classic/data/model/composer.dart';
import 'package:classic/data/model/musical_form.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'composer_register_event.freezed.dart';

@freezed
class ComposerRegisterEvent with _$ComposerRegisterEvent {
  factory ComposerRegisterEvent.register(Composer composer) =
      ComposerRegisterEventRegister;

  factory ComposerRegisterEvent.registerMusicalForm(
          String composerId, MusicalForm musicalForm) =
      ComposerRegisterEventRegisterMusicalForm;
}
