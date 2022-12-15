// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_thumbnails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_YoutubeThumbnails _$$_YoutubeThumbnailsFromJson(Map<String, dynamic> json) =>
    _$_YoutubeThumbnails(
      min: YoutubeThumbnail.fromJson(json['default'] as Map<String, dynamic>),
      medium: YoutubeThumbnail.fromJson(json['medium'] as Map<String, dynamic>),
      high: YoutubeThumbnail.fromJson(json['high'] as Map<String, dynamic>),
      standard:
          YoutubeThumbnail.fromJson(json['standard'] as Map<String, dynamic>),
      maxres: json['maxres'] == null
          ? null
          : YoutubeThumbnail.fromJson(json['maxres'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_YoutubeThumbnailsToJson(
        _$_YoutubeThumbnails instance) =>
    <String, dynamic>{
      'default': instance.min.toJson(),
      'medium': instance.medium.toJson(),
      'high': instance.high.toJson(),
      'standard': instance.standard.toJson(),
      'maxres': instance.maxres?.toJson(),
    };
