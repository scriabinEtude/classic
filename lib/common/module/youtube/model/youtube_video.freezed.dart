// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'youtube_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YoutubeVideo _$YoutubeVideoFromJson(Map<String, dynamic> json) {
  return _YoutubeVideo.fromJson(json);
}

/// @nodoc
mixin _$YoutubeVideo {
  String get kind => throw _privateConstructorUsedError;
  String get etag => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  YoutubeSnippet get snippet => throw _privateConstructorUsedError;
  YoutubeLocalized? get localized => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeVideoCopyWith<YoutubeVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeVideoCopyWith<$Res> {
  factory $YoutubeVideoCopyWith(
          YoutubeVideo value, $Res Function(YoutubeVideo) then) =
      _$YoutubeVideoCopyWithImpl<$Res, YoutubeVideo>;
  @useResult
  $Res call(
      {String kind,
      String etag,
      String id,
      YoutubeSnippet snippet,
      YoutubeLocalized? localized});

  $YoutubeSnippetCopyWith<$Res> get snippet;
  $YoutubeLocalizedCopyWith<$Res>? get localized;
}

/// @nodoc
class _$YoutubeVideoCopyWithImpl<$Res, $Val extends YoutubeVideo>
    implements $YoutubeVideoCopyWith<$Res> {
  _$YoutubeVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? etag = null,
    Object? id = null,
    Object? snippet = null,
    Object? localized = freezed,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      snippet: null == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as YoutubeSnippet,
      localized: freezed == localized
          ? _value.localized
          : localized // ignore: cast_nullable_to_non_nullable
              as YoutubeLocalized?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $YoutubeSnippetCopyWith<$Res> get snippet {
    return $YoutubeSnippetCopyWith<$Res>(_value.snippet, (value) {
      return _then(_value.copyWith(snippet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $YoutubeLocalizedCopyWith<$Res>? get localized {
    if (_value.localized == null) {
      return null;
    }

    return $YoutubeLocalizedCopyWith<$Res>(_value.localized!, (value) {
      return _then(_value.copyWith(localized: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_YoutubeVideoCopyWith<$Res>
    implements $YoutubeVideoCopyWith<$Res> {
  factory _$$_YoutubeVideoCopyWith(
          _$_YoutubeVideo value, $Res Function(_$_YoutubeVideo) then) =
      __$$_YoutubeVideoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String kind,
      String etag,
      String id,
      YoutubeSnippet snippet,
      YoutubeLocalized? localized});

  @override
  $YoutubeSnippetCopyWith<$Res> get snippet;
  @override
  $YoutubeLocalizedCopyWith<$Res>? get localized;
}

/// @nodoc
class __$$_YoutubeVideoCopyWithImpl<$Res>
    extends _$YoutubeVideoCopyWithImpl<$Res, _$_YoutubeVideo>
    implements _$$_YoutubeVideoCopyWith<$Res> {
  __$$_YoutubeVideoCopyWithImpl(
      _$_YoutubeVideo _value, $Res Function(_$_YoutubeVideo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? etag = null,
    Object? id = null,
    Object? snippet = null,
    Object? localized = freezed,
  }) {
    return _then(_$_YoutubeVideo(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      snippet: null == snippet
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as YoutubeSnippet,
      localized: freezed == localized
          ? _value.localized
          : localized // ignore: cast_nullable_to_non_nullable
              as YoutubeLocalized?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YoutubeVideo implements _YoutubeVideo {
  _$_YoutubeVideo(
      {required this.kind,
      required this.etag,
      required this.id,
      required this.snippet,
      this.localized});

  factory _$_YoutubeVideo.fromJson(Map<String, dynamic> json) =>
      _$$_YoutubeVideoFromJson(json);

  @override
  final String kind;
  @override
  final String etag;
  @override
  final String id;
  @override
  final YoutubeSnippet snippet;
  @override
  final YoutubeLocalized? localized;

  @override
  String toString() {
    return 'YoutubeVideo(kind: $kind, etag: $etag, id: $id, snippet: $snippet, localized: $localized)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeVideo &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.snippet, snippet) || other.snippet == snippet) &&
            (identical(other.localized, localized) ||
                other.localized == localized));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, kind, etag, id, snippet, localized);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeVideoCopyWith<_$_YoutubeVideo> get copyWith =>
      __$$_YoutubeVideoCopyWithImpl<_$_YoutubeVideo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YoutubeVideoToJson(
      this,
    );
  }
}

abstract class _YoutubeVideo implements YoutubeVideo {
  factory _YoutubeVideo(
      {required final String kind,
      required final String etag,
      required final String id,
      required final YoutubeSnippet snippet,
      final YoutubeLocalized? localized}) = _$_YoutubeVideo;

  factory _YoutubeVideo.fromJson(Map<String, dynamic> json) =
      _$_YoutubeVideo.fromJson;

  @override
  String get kind;
  @override
  String get etag;
  @override
  String get id;
  @override
  YoutubeSnippet get snippet;
  @override
  YoutubeLocalized? get localized;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeVideoCopyWith<_$_YoutubeVideo> get copyWith =>
      throw _privateConstructorUsedError;
}
