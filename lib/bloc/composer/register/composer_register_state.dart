import 'package:classic/common/object/status/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'composer_register_state.freezed.dart';

@freezed
class ComposerRegisterState with _$ComposerRegisterState {
  factory ComposerRegisterState({
    required Status status,
  }) = _ComposerRegisterState;
}
