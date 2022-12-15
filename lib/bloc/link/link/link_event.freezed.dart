// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'link_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LinkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLinks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLinks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLinks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LinkEventGetLinks value) getLinks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LinkEventGetLinks value)? getLinks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LinkEventGetLinks value)? getLinks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkEventCopyWith<$Res> {
  factory $LinkEventCopyWith(LinkEvent value, $Res Function(LinkEvent) then) =
      _$LinkEventCopyWithImpl<$Res, LinkEvent>;
}

/// @nodoc
class _$LinkEventCopyWithImpl<$Res, $Val extends LinkEvent>
    implements $LinkEventCopyWith<$Res> {
  _$LinkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LinkEventGetLinksCopyWith<$Res> {
  factory _$$LinkEventGetLinksCopyWith(
          _$LinkEventGetLinks value, $Res Function(_$LinkEventGetLinks) then) =
      __$$LinkEventGetLinksCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LinkEventGetLinksCopyWithImpl<$Res>
    extends _$LinkEventCopyWithImpl<$Res, _$LinkEventGetLinks>
    implements _$$LinkEventGetLinksCopyWith<$Res> {
  __$$LinkEventGetLinksCopyWithImpl(
      _$LinkEventGetLinks _value, $Res Function(_$LinkEventGetLinks) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LinkEventGetLinks implements LinkEventGetLinks {
  _$LinkEventGetLinks();

  @override
  String toString() {
    return 'LinkEvent.getLinks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LinkEventGetLinks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLinks,
  }) {
    return getLinks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLinks,
  }) {
    return getLinks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLinks,
    required TResult orElse(),
  }) {
    if (getLinks != null) {
      return getLinks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LinkEventGetLinks value) getLinks,
  }) {
    return getLinks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LinkEventGetLinks value)? getLinks,
  }) {
    return getLinks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LinkEventGetLinks value)? getLinks,
    required TResult orElse(),
  }) {
    if (getLinks != null) {
      return getLinks(this);
    }
    return orElse();
  }
}

abstract class LinkEventGetLinks implements LinkEvent {
  factory LinkEventGetLinks() = _$LinkEventGetLinks;
}
