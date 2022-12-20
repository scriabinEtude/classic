// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'musical_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MusicalForm _$$_MusicalFormFromJson(Map<String, dynamic> json) =>
    _$_MusicalForm(
      name: json['name'] as String,
      engName: json['engName'] as String,
      musics: (json['musics'] as List<dynamic>?)
              ?.map((e) => Music.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MusicalFormToJson(_$_MusicalForm instance) =>
    <String, dynamic>{
      'name': instance.name,
      'engName': instance.engName,
      'musics': instance.musics.map((e) => e.toJson()).toList(),
    };
