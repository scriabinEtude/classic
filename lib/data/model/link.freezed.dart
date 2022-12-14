// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  String get userId => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  YoutubeVideo get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call({String userId, String provider, YoutubeVideo link});

  $YoutubeVideoCopyWith<$Res> get link;
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? provider = null,
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as YoutubeVideo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $YoutubeVideoCopyWith<$Res> get link {
    return $YoutubeVideoCopyWith<$Res>(_value.link, (value) {
      return _then(_value.copyWith(link: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LinkCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$_LinkCopyWith(_$_Link value, $Res Function(_$_Link) then) =
      __$$_LinkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String provider, YoutubeVideo link});

  @override
  $YoutubeVideoCopyWith<$Res> get link;
}

/// @nodoc
class __$$_LinkCopyWithImpl<$Res> extends _$LinkCopyWithImpl<$Res, _$_Link>
    implements _$$_LinkCopyWith<$Res> {
  __$$_LinkCopyWithImpl(_$_Link _value, $Res Function(_$_Link) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? provider = null,
    Object? link = null,
  }) {
    return _then(_$_Link(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as YoutubeVideo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Link extends _Link {
  _$_Link({required this.userId, required this.provider, required this.link})
      : super._();

  factory _$_Link.fromJson(Map<String, dynamic> json) => _$$_LinkFromJson(json);

  @override
  final String userId;
  @override
  final String provider;
  @override
  final YoutubeVideo link;

  @override
  String toString() {
    return 'Link(userId: $userId, provider: $provider, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Link &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, provider, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinkCopyWith<_$_Link> get copyWith =>
      __$$_LinkCopyWithImpl<_$_Link>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkToJson(
      this,
    );
  }
}

abstract class _Link extends Link {
  factory _Link(
      {required final String userId,
      required final String provider,
      required final YoutubeVideo link}) = _$_Link;
  _Link._() : super._();

  factory _Link.fromJson(Map<String, dynamic> json) = _$_Link.fromJson;

  @override
  String get userId;
  @override
  String get provider;
  @override
  YoutubeVideo get link;
  @override
  @JsonKey(ignore: true)
  _$$_LinkCopyWith<_$_Link> get copyWith => throw _privateConstructorUsedError;
}
