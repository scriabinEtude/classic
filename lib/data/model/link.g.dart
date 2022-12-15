// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Link _$$_LinkFromJson(Map<String, dynamic> json) => _$_Link(
      userId: json['userId'] as String,
      provider: json['provider'] as String,
      link: YoutubeVideo.fromJson(json['link'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LinkToJson(_$_Link instance) => <String, dynamic>{
      'userId': instance.userId,
      'provider': instance.provider,
      'link': instance.link.toJson(),
    };
