import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  User._();
  factory User({
    required String email,
    required String provider,
    String? password,
    required String nickname,
    required bool emailVerified,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  String get id => email + provider;
}
