// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'youtube_thumbnail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YoutubeThumbnail _$YoutubeThumbnailFromJson(Map<String, dynamic> json) {
  return _YoutubeThumbnail.fromJson(json);
}

/// @nodoc
mixin _$YoutubeThumbnail {
  String get url => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeThumbnailCopyWith<YoutubeThumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeThumbnailCopyWith<$Res> {
  factory $YoutubeThumbnailCopyWith(
          YoutubeThumbnail value, $Res Function(YoutubeThumbnail) then) =
      _$YoutubeThumbnailCopyWithImpl<$Res, YoutubeThumbnail>;
  @useResult
  $Res call({String url, int width, int height});
}

/// @nodoc
class _$YoutubeThumbnailCopyWithImpl<$Res, $Val extends YoutubeThumbnail>
    implements $YoutubeThumbnailCopyWith<$Res> {
  _$YoutubeThumbnailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_YoutubeThumbnailCopyWith<$Res>
    implements $YoutubeThumbnailCopyWith<$Res> {
  factory _$$_YoutubeThumbnailCopyWith(
          _$_YoutubeThumbnail value, $Res Function(_$_YoutubeThumbnail) then) =
      __$$_YoutubeThumbnailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, int width, int height});
}

/// @nodoc
class __$$_YoutubeThumbnailCopyWithImpl<$Res>
    extends _$YoutubeThumbnailCopyWithImpl<$Res, _$_YoutubeThumbnail>
    implements _$$_YoutubeThumbnailCopyWith<$Res> {
  __$$_YoutubeThumbnailCopyWithImpl(
      _$_YoutubeThumbnail _value, $Res Function(_$_YoutubeThumbnail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$_YoutubeThumbnail(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YoutubeThumbnail implements _YoutubeThumbnail {
  _$_YoutubeThumbnail(
      {required this.url, required this.width, required this.height});

  factory _$_YoutubeThumbnail.fromJson(Map<String, dynamic> json) =>
      _$$_YoutubeThumbnailFromJson(json);

  @override
  final String url;
  @override
  final int width;
  @override
  final int height;

  @override
  String toString() {
    return 'YoutubeThumbnail(url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeThumbnail &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeThumbnailCopyWith<_$_YoutubeThumbnail> get copyWith =>
      __$$_YoutubeThumbnailCopyWithImpl<_$_YoutubeThumbnail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YoutubeThumbnailToJson(
      this,
    );
  }
}

abstract class _YoutubeThumbnail implements YoutubeThumbnail {
  factory _YoutubeThumbnail(
      {required final String url,
      required final int width,
      required final int height}) = _$_YoutubeThumbnail;

  factory _YoutubeThumbnail.fromJson(Map<String, dynamic> json) =
      _$_YoutubeThumbnail.fromJson;

  @override
  String get url;
  @override
  int get width;
  @override
  int get height;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeThumbnailCopyWith<_$_YoutubeThumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}
