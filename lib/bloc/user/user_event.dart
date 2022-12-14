import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:classic/data/model/user.dart';
part 'user_event.freezed.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.login(String email, String password) = UserEventLogin;
  const factory UserEvent.setUser(User user) = UserEventSetUser;
  const factory UserEvent.logout() = UserEventLogout;
  const factory UserEvent.initStatus() = UserEventInitStatus;
  const factory UserEvent.sendVerifiedEmail() = UserEventSendVerifiedEmail;
  const factory UserEvent.autoLogin() = UserEventAutoLogin;
}
