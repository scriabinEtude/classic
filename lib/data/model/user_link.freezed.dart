// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserLink _$UserLinkFromJson(Map<String, dynamic> json) {
  return _UserLink.fromJson(json);
}

/// @nodoc
mixin _$UserLink {
  String get linkId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLinkCopyWith<UserLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLinkCopyWith<$Res> {
  factory $UserLinkCopyWith(UserLink value, $Res Function(UserLink) then) =
      _$UserLinkCopyWithImpl<$Res, UserLink>;
  @useResult
  $Res call({String linkId, String title, String provider});
}

/// @nodoc
class _$UserLinkCopyWithImpl<$Res, $Val extends UserLink>
    implements $UserLinkCopyWith<$Res> {
  _$UserLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkId = null,
    Object? title = null,
    Object? provider = null,
  }) {
    return _then(_value.copyWith(
      linkId: null == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserLinkCopyWith<$Res> implements $UserLinkCopyWith<$Res> {
  factory _$$_UserLinkCopyWith(
          _$_UserLink value, $Res Function(_$_UserLink) then) =
      __$$_UserLinkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String linkId, String title, String provider});
}

/// @nodoc
class __$$_UserLinkCopyWithImpl<$Res>
    extends _$UserLinkCopyWithImpl<$Res, _$_UserLink>
    implements _$$_UserLinkCopyWith<$Res> {
  __$$_UserLinkCopyWithImpl(
      _$_UserLink _value, $Res Function(_$_UserLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkId = null,
    Object? title = null,
    Object? provider = null,
  }) {
    return _then(_$_UserLink(
      linkId: null == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserLink implements _UserLink {
  _$_UserLink(
      {required this.linkId, required this.title, required this.provider});

  factory _$_UserLink.fromJson(Map<String, dynamic> json) =>
      _$$_UserLinkFromJson(json);

  @override
  final String linkId;
  @override
  final String title;
  @override
  final String provider;

  @override
  String toString() {
    return 'UserLink(linkId: $linkId, title: $title, provider: $provider)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLink &&
            (identical(other.linkId, linkId) || other.linkId == linkId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.provider, provider) ||
                other.provider == provider));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, linkId, title, provider);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserLinkCopyWith<_$_UserLink> get copyWith =>
      __$$_UserLinkCopyWithImpl<_$_UserLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserLinkToJson(
      this,
    );
  }
}

abstract class _UserLink implements UserLink {
  factory _UserLink(
      {required final String linkId,
      required final String title,
      required final String provider}) = _$_UserLink;

  factory _UserLink.fromJson(Map<String, dynamic> json) = _$_UserLink.fromJson;

  @override
  String get linkId;
  @override
  String get title;
  @override
  String get provider;
  @override
  @JsonKey(ignore: true)
  _$$_UserLinkCopyWith<_$_UserLink> get copyWith =>
      throw _privateConstructorUsedError;
}
