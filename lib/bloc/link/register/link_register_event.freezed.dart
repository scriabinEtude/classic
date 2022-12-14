// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'link_register_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LinkRegisterEvent {
  String get url => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) regist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? regist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? regist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LinkRegisterEventRegist value) regist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LinkRegisterEventRegist value)? regist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LinkRegisterEventRegist value)? regist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LinkRegisterEventCopyWith<LinkRegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkRegisterEventCopyWith<$Res> {
  factory $LinkRegisterEventCopyWith(
          LinkRegisterEvent value, $Res Function(LinkRegisterEvent) then) =
      _$LinkRegisterEventCopyWithImpl<$Res, LinkRegisterEvent>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$LinkRegisterEventCopyWithImpl<$Res, $Val extends LinkRegisterEvent>
    implements $LinkRegisterEventCopyWith<$Res> {
  _$LinkRegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkRegisterEventRegistCopyWith<$Res>
    implements $LinkRegisterEventCopyWith<$Res> {
  factory _$$LinkRegisterEventRegistCopyWith(_$LinkRegisterEventRegist value,
          $Res Function(_$LinkRegisterEventRegist) then) =
      __$$LinkRegisterEventRegistCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$LinkRegisterEventRegistCopyWithImpl<$Res>
    extends _$LinkRegisterEventCopyWithImpl<$Res, _$LinkRegisterEventRegist>
    implements _$$LinkRegisterEventRegistCopyWith<$Res> {
  __$$LinkRegisterEventRegistCopyWithImpl(_$LinkRegisterEventRegist _value,
      $Res Function(_$LinkRegisterEventRegist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$LinkRegisterEventRegist(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LinkRegisterEventRegist implements LinkRegisterEventRegist {
  _$LinkRegisterEventRegist(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'LinkRegisterEvent.regist(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkRegisterEventRegist &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkRegisterEventRegistCopyWith<_$LinkRegisterEventRegist> get copyWith =>
      __$$LinkRegisterEventRegistCopyWithImpl<_$LinkRegisterEventRegist>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) regist,
  }) {
    return regist(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? regist,
  }) {
    return regist?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? regist,
    required TResult orElse(),
  }) {
    if (regist != null) {
      return regist(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LinkRegisterEventRegist value) regist,
  }) {
    return regist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LinkRegisterEventRegist value)? regist,
  }) {
    return regist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LinkRegisterEventRegist value)? regist,
    required TResult orElse(),
  }) {
    if (regist != null) {
      return regist(this);
    }
    return orElse();
  }
}

abstract class LinkRegisterEventRegist implements LinkRegisterEvent {
  factory LinkRegisterEventRegist(final String url) = _$LinkRegisterEventRegist;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$LinkRegisterEventRegistCopyWith<_$LinkRegisterEventRegist> get copyWith =>
      throw _privateConstructorUsedError;
}
