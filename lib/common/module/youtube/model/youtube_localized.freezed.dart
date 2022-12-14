// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'youtube_localized.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YoutubeLocalized _$YoutubeLocalizedFromJson(Map<String, dynamic> json) {
  return _YoutubeLocalized.fromJson(json);
}

/// @nodoc
mixin _$YoutubeLocalized {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeLocalizedCopyWith<YoutubeLocalized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeLocalizedCopyWith<$Res> {
  factory $YoutubeLocalizedCopyWith(
          YoutubeLocalized value, $Res Function(YoutubeLocalized) then) =
      _$YoutubeLocalizedCopyWithImpl<$Res, YoutubeLocalized>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$YoutubeLocalizedCopyWithImpl<$Res, $Val extends YoutubeLocalized>
    implements $YoutubeLocalizedCopyWith<$Res> {
  _$YoutubeLocalizedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_YoutubeLocalizedCopyWith<$Res>
    implements $YoutubeLocalizedCopyWith<$Res> {
  factory _$$_YoutubeLocalizedCopyWith(
          _$_YoutubeLocalized value, $Res Function(_$_YoutubeLocalized) then) =
      __$$_YoutubeLocalizedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$_YoutubeLocalizedCopyWithImpl<$Res>
    extends _$YoutubeLocalizedCopyWithImpl<$Res, _$_YoutubeLocalized>
    implements _$$_YoutubeLocalizedCopyWith<$Res> {
  __$$_YoutubeLocalizedCopyWithImpl(
      _$_YoutubeLocalized _value, $Res Function(_$_YoutubeLocalized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_YoutubeLocalized(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YoutubeLocalized implements _YoutubeLocalized {
  _$_YoutubeLocalized({required this.title, required this.description});

  factory _$_YoutubeLocalized.fromJson(Map<String, dynamic> json) =>
      _$$_YoutubeLocalizedFromJson(json);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'YoutubeLocalized(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeLocalized &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeLocalizedCopyWith<_$_YoutubeLocalized> get copyWith =>
      __$$_YoutubeLocalizedCopyWithImpl<_$_YoutubeLocalized>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YoutubeLocalizedToJson(
      this,
    );
  }
}

abstract class _YoutubeLocalized implements YoutubeLocalized {
  factory _YoutubeLocalized(
      {required final String title,
      required final String description}) = _$_YoutubeLocalized;

  factory _YoutubeLocalized.fromJson(Map<String, dynamic> json) =
      _$_YoutubeLocalized.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeLocalizedCopyWith<_$_YoutubeLocalized> get copyWith =>
      throw _privateConstructorUsedError;
}
