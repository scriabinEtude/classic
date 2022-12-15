// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_snippet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_YoutubeSnippet _$$_YoutubeSnippetFromJson(Map<String, dynamic> json) =>
    _$_YoutubeSnippet(
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      channelId: json['channelId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      thumbnails: YoutubeThumbnails.fromJson(
          json['thumbnails'] as Map<String, dynamic>),
      channelTitle: json['channelTitle'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      categoryId: json['categoryId'] as String,
      liveBroadcastContent: json['liveBroadcastContent'] as String,
      localized:
          YoutubeLocalized.fromJson(json['localized'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_YoutubeSnippetToJson(_$_YoutubeSnippet instance) =>
    <String, dynamic>{
      'publishedAt': instance.publishedAt.toIso8601String(),
      'channelId': instance.channelId,
      'title': instance.title,
      'description': instance.description,
      'thumbnails': instance.thumbnails.toJson(),
      'channelTitle': instance.channelTitle,
      'tags': instance.tags,
      'categoryId': instance.categoryId,
      'liveBroadcastContent': instance.liveBroadcastContent,
      'localized': instance.localized.toJson(),
    };
