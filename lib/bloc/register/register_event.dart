import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.freezed.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.regist(
    String email,
    String nickname,
    String password,
  ) = RegisterEventRegist;
}
