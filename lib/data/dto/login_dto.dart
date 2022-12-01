import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:classic/data/model/jwt.dart';
import 'package:classic/data/model/user.dart';

part 'login_dto.freezed.dart';
part 'login_dto.g.dart';

@freezed
class LoginDTO with _$LoginDTO {
  factory LoginDTO({
    required User user,
    required JWT jwt,
  }) = _LoginDTO;

  factory LoginDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginDTOFromJson(json);
}
