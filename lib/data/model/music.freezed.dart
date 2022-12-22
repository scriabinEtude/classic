// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'music.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Music _$MusicFromJson(Map<String, dynamic> json) {
  return _Music.fromJson(json);
}

/// @nodoc
mixin _$Music {
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  List<Link> get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MusicCopyWith<Music> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicCopyWith<$Res> {
  factory $MusicCopyWith(Music value, $Res Function(Music) then) =
      _$MusicCopyWithImpl<$Res, Music>;
  @useResult
  $Res call({String title, String subTitle, List<Link> links});
}

/// @nodoc
class _$MusicCopyWithImpl<$Res, $Val extends Music>
    implements $MusicCopyWith<$Res> {
  _$MusicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? links = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MusicCopyWith<$Res> implements $MusicCopyWith<$Res> {
  factory _$$_MusicCopyWith(_$_Music value, $Res Function(_$_Music) then) =
      __$$_MusicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String subTitle, List<Link> links});
}

/// @nodoc
class __$$_MusicCopyWithImpl<$Res> extends _$MusicCopyWithImpl<$Res, _$_Music>
    implements _$$_MusicCopyWith<$Res> {
  __$$_MusicCopyWithImpl(_$_Music _value, $Res Function(_$_Music) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? links = null,
  }) {
    return _then(_$_Music(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Music extends _Music {
  _$_Music(
      {required this.title,
      required this.subTitle,
      final List<Link> links = const []})
      : _links = links,
        super._();

  factory _$_Music.fromJson(Map<String, dynamic> json) =>
      _$$_MusicFromJson(json);

  @override
  final String title;
  @override
  final String subTitle;
  final List<Link> _links;
  @override
  @JsonKey()
  List<Link> get links {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MusicCopyWith<_$_Music> get copyWith =>
      __$$_MusicCopyWithImpl<_$_Music>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MusicToJson(
      this,
    );
  }
}

abstract class _Music extends Music {
  factory _Music(
      {required final String title,
      required final String subTitle,
      final List<Link> links}) = _$_Music;
  _Music._() : super._();

  factory _Music.fromJson(Map<String, dynamic> json) = _$_Music.fromJson;

  @override
  String get title;
  @override
  String get subTitle;
  @override
  List<Link> get links;
  @override
  @JsonKey(ignore: true)
  _$$_MusicCopyWith<_$_Music> get copyWith =>
      throw _privateConstructorUsedError;
}
