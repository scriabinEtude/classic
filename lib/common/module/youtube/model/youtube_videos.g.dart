// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_videos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_YoutubeVideos _$$_YoutubeVideosFromJson(Map<String, dynamic> json) =>
    _$_YoutubeVideos(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => YoutubeVideo.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo:
          YoutubePageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_YoutubeVideosToJson(_$_YoutubeVideos instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'pageInfo': instance.pageInfo.toJson(),
    };
