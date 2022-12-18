import 'package:classic/data/model/composer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'composer_register_event.freezed.dart';

@freezed
class ComposerRegisterEvent with _$ComposerRegisterEvent {
  factory ComposerRegisterEvent.register(Composer composer) =
      ComposerRegisterEventRegister;
}
