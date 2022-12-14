// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'youtube_videos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YoutubeVideos _$YoutubeVideosFromJson(Map<String, dynamic> json) {
  return _YoutubeVideos.fromJson(json);
}

/// @nodoc
mixin _$YoutubeVideos {
  String get kind => throw _privateConstructorUsedError;
  String get etag => throw _privateConstructorUsedError;
  List<YoutubeVideo> get items => throw _privateConstructorUsedError;
  YoutubePageInfo get pageInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeVideosCopyWith<YoutubeVideos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeVideosCopyWith<$Res> {
  factory $YoutubeVideosCopyWith(
          YoutubeVideos value, $Res Function(YoutubeVideos) then) =
      _$YoutubeVideosCopyWithImpl<$Res, YoutubeVideos>;
  @useResult
  $Res call(
      {String kind,
      String etag,
      List<YoutubeVideo> items,
      YoutubePageInfo pageInfo});

  $YoutubePageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$YoutubeVideosCopyWithImpl<$Res, $Val extends YoutubeVideos>
    implements $YoutubeVideosCopyWith<$Res> {
  _$YoutubeVideosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? etag = null,
    Object? items = null,
    Object? pageInfo = null,
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
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<YoutubeVideo>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as YoutubePageInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $YoutubePageInfoCopyWith<$Res> get pageInfo {
    return $YoutubePageInfoCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_YoutubeVideosCopyWith<$Res>
    implements $YoutubeVideosCopyWith<$Res> {
  factory _$$_YoutubeVideosCopyWith(
          _$_YoutubeVideos value, $Res Function(_$_YoutubeVideos) then) =
      __$$_YoutubeVideosCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String kind,
      String etag,
      List<YoutubeVideo> items,
      YoutubePageInfo pageInfo});

  @override
  $YoutubePageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$$_YoutubeVideosCopyWithImpl<$Res>
    extends _$YoutubeVideosCopyWithImpl<$Res, _$_YoutubeVideos>
    implements _$$_YoutubeVideosCopyWith<$Res> {
  __$$_YoutubeVideosCopyWithImpl(
      _$_YoutubeVideos _value, $Res Function(_$_YoutubeVideos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? etag = null,
    Object? items = null,
    Object? pageInfo = null,
  }) {
    return _then(_$_YoutubeVideos(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<YoutubeVideo>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as YoutubePageInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YoutubeVideos implements _YoutubeVideos {
  _$_YoutubeVideos(
      {required this.kind,
      required this.etag,
      required final List<YoutubeVideo> items,
      required this.pageInfo})
      : _items = items;

  factory _$_YoutubeVideos.fromJson(Map<String, dynamic> json) =>
      _$$_YoutubeVideosFromJson(json);

  @override
  final String kind;
  @override
  final String etag;
  final List<YoutubeVideo> _items;
  @override
  List<YoutubeVideo> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final YoutubePageInfo pageInfo;

  @override
  String toString() {
    return 'YoutubeVideos(kind: $kind, etag: $etag, items: $items, pageInfo: $pageInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubeVideos &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kind, etag,
      const DeepCollectionEquality().hash(_items), pageInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubeVideosCopyWith<_$_YoutubeVideos> get copyWith =>
      __$$_YoutubeVideosCopyWithImpl<_$_YoutubeVideos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YoutubeVideosToJson(
      this,
    );
  }
}

abstract class _YoutubeVideos implements YoutubeVideos {
  factory _YoutubeVideos(
      {required final String kind,
      required final String etag,
      required final List<YoutubeVideo> items,
      required final YoutubePageInfo pageInfo}) = _$_YoutubeVideos;

  factory _YoutubeVideos.fromJson(Map<String, dynamic> json) =
      _$_YoutubeVideos.fromJson;

  @override
  String get kind;
  @override
  String get etag;
  @override
  List<YoutubeVideo> get items;
  @override
  YoutubePageInfo get pageInfo;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubeVideosCopyWith<_$_YoutubeVideos> get copyWith =>
      throw _privateConstructorUsedError;
}
