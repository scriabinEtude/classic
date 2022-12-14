// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_YoutubeVideo _$$_YoutubeVideoFromJson(Map<String, dynamic> json) =>
    _$_YoutubeVideo(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      id: json['id'] as String,
      snippet: YoutubeSnippet.fromJson(json['snippet'] as Map<String, dynamic>),
      localized: json['localized'] == null
          ? null
          : YoutubeLocalized.fromJson(
              json['localized'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_YoutubeVideoToJson(_$_YoutubeVideo instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'id': instance.id,
      'snippet': instance.snippet,
      'localized': instance.localized,
    };
