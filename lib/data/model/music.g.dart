// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Music _$$_MusicFromJson(Map<String, dynamic> json) => _$_Music(
      links: (json['links'] as List<dynamic>?)
              ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MusicToJson(_$_Music instance) => <String, dynamic>{
      'links': instance.links.map((e) => e.toJson()).toList(),
    };
