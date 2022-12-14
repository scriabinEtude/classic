import 'package:classic/common/object/status/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_register_state.freezed.dart';

@freezed
class LinkRegisterState with _$LinkRegisterState {
  factory LinkRegisterState({
    required Status status,
  }) = _LinkRegisterState;
}
