// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Music _$$_MusicFromJson(Map<String, dynamic> json) => _$_Music(
      title: json['title'] as String,
      subTitle: json['subTitle'] as String,
      links: (json['links'] as List<dynamic>?)
              ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MusicToJson(_$_Music instance) => <String, dynamic>{
      'title': instance.title,
      'subTitle': instance.subTitle,
      'links': instance.links.map((e) => e.toJson()).toList(),
    };
