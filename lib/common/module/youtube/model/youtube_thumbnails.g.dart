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
      maxres: YoutubeThumbnail.fromJson(json['maxres'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_YoutubeThumbnailsToJson(
        _$_YoutubeThumbnails instance) =>
    <String, dynamic>{
      'default': instance.min,
      'medium': instance.medium,
      'high': instance.high,
      'standard': instance.standard,
      'maxres': instance.maxres,
    };
