import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const UserState._();
  factory UserState({
    required Status status,
    User? user,
  }) = _UserState;

  bool get isLogin => user != null;
}
