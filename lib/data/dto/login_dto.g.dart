// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginDTO _$$_LoginDTOFromJson(Map<String, dynamic> json) => _$_LoginDTO(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      jwt: JWT.fromJson(json['jwt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginDTOToJson(_$_LoginDTO instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'jwt': instance.jwt.toJson(),
    };
