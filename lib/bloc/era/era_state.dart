import 'package:classic/common/object/status/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'era_state.freezed.dart';

@freezed
class EraState with _$EraState {
  factory EraState({required Status status}) = _EraState;
}
