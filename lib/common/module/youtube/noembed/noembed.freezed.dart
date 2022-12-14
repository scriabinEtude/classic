// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'noembed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoEmbed _$NoEmbedFromJson(Map<String, dynamic> json) {
  return _NoEmbed.fromJson(json);
}

/// @nodoc
mixin _$NoEmbed {
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail_url")
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "author_name")
  String get authorName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoEmbedCopyWith<NoEmbed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoEmbedCopyWith<$Res> {
  factory $NoEmbedCopyWith(NoEmbed value, $Res Function(NoEmbed) then) =
      _$NoEmbedCopyWithImpl<$Res, NoEmbed>;
  @useResult
  $Res call(
      {String url,
      String title,
      @JsonKey(name: "thumbnail_url") String thumbnailUrl,
      @JsonKey(name: "author_name") String authorName});
}

/// @nodoc
class _$NoEmbedCopyWithImpl<$Res, $Val extends NoEmbed>
    implements $NoEmbedCopyWith<$Res> {
  _$NoEmbedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
    Object? thumbnailUrl = null,
    Object? authorName = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoEmbedCopyWith<$Res> implements $NoEmbedCopyWith<$Res> {
  factory _$$_NoEmbedCopyWith(
          _$_NoEmbed value, $Res Function(_$_NoEmbed) then) =
      __$$_NoEmbedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      String title,
      @JsonKey(name: "thumbnail_url") String thumbnailUrl,
      @JsonKey(name: "author_name") String authorName});
}

/// @nodoc
class __$$_NoEmbedCopyWithImpl<$Res>
    extends _$NoEmbedCopyWithImpl<$Res, _$_NoEmbed>
    implements _$$_NoEmbedCopyWith<$Res> {
  __$$_NoEmbedCopyWithImpl(_$_NoEmbed _value, $Res Function(_$_NoEmbed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = null,
    Object? thumbnailUrl = null,
    Object? authorName = null,
  }) {
    return _then(_$_NoEmbed(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoEmbed implements _NoEmbed {
  _$_NoEmbed(
      {required this.url,
      required this.title,
      @JsonKey(name: "thumbnail_url") required this.thumbnailUrl,
      @JsonKey(name: "author_name") required this.authorName});

  factory _$_NoEmbed.fromJson(Map<String, dynamic> json) =>
      _$$_NoEmbedFromJson(json);

  @override
  final String url;
  @override
  final String title;
  @override
  @JsonKey(name: "thumbnail_url")
  final String thumbnailUrl;
  @override
  @JsonKey(name: "author_name")
  final String authorName;

  @override
  String toString() {
    return 'NoEmbed(url: $url, title: $title, thumbnailUrl: $thumbnailUrl, authorName: $authorName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoEmbed &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, title, thumbnailUrl, authorName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoEmbedCopyWith<_$_NoEmbed> get copyWith =>
      __$$_NoEmbedCopyWithImpl<_$_NoEmbed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoEmbedToJson(
      this,
    );
  }
}

abstract class _NoEmbed implements NoEmbed {
  factory _NoEmbed(
          {required final String url,
          required final String title,
          @JsonKey(name: "thumbnail_url") required final String thumbnailUrl,
          @JsonKey(name: "author_name") required final String authorName}) =
      _$_NoEmbed;

  factory _NoEmbed.fromJson(Map<String, dynamic> json) = _$_NoEmbed.fromJson;

  @override
  String get url;
  @override
  String get title;
  @override
  @JsonKey(name: "thumbnail_url")
  String get thumbnailUrl;
  @override
  @JsonKey(name: "author_name")
  String get authorName;
  @override
  @JsonKey(ignore: true)
  _$$_NoEmbedCopyWith<_$_NoEmbed> get copyWith =>
      throw _privateConstructorUsedError;
}
