import 'package:classic/common/object/status/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_state.freezed.dart';

@freezed
class PersonState with _$PersonState {
  factory PersonState({
    required Status status,
  }) = _PersonState;
}
