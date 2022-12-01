import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt.freezed.dart';
part 'jwt.g.dart';

@freezed
class JWT with _$JWT {
  factory JWT({
    @JsonKey(name: 'access_token') required String accessToken,
  }) = _JWT;

  factory JWT.fromJson(Map<String, dynamic> json) => _$JWTFromJson(json);
}
