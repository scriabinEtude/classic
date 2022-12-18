// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'composer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Composer _$$_ComposerFromJson(Map<String, dynamic> json) => _$_Composer(
      name: json['name'] as String,
      fullname: json['fullname'] as String,
      names:
          (json['names'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      musicalForms: (json['musicalForms'] as List<dynamic>?)
              ?.map((e) => MusicalForm.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      thanksto: (json['thanksto'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['createdAt'] as String),
    )..displayString = json['displayString'] as String;

Map<String, dynamic> _$$_ComposerToJson(_$_Composer instance) =>
    <String, dynamic>{
      'displayString': instance.displayString,
      'name': instance.name,
      'fullname': instance.fullname,
      'names': instance.names,
      'musicalForms': instance.musicalForms.map((e) => e.toJson()).toList(),
      'thanksto': instance.thanksto,
      'createdAt': instance.createdAt.toIso8601String(),
    };
