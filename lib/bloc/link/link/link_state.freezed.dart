// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'link_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LinkState {
  Status get status => throw _privateConstructorUsedError;
  List<Link> get links => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LinkStateCopyWith<LinkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkStateCopyWith<$Res> {
  factory $LinkStateCopyWith(LinkState value, $Res Function(LinkState) then) =
      _$LinkStateCopyWithImpl<$Res, LinkState>;
  @useResult
  $Res call({Status status, List<Link> links});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$LinkStateCopyWithImpl<$Res, $Val extends LinkState>
    implements $LinkStateCopyWith<$Res> {
  _$LinkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? links = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LinkStateCopyWith<$Res> implements $LinkStateCopyWith<$Res> {
  factory _$$_LinkStateCopyWith(
          _$_LinkState value, $Res Function(_$_LinkState) then) =
      __$$_LinkStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<Link> links});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_LinkStateCopyWithImpl<$Res>
    extends _$LinkStateCopyWithImpl<$Res, _$_LinkState>
    implements _$$_LinkStateCopyWith<$Res> {
  __$$_LinkStateCopyWithImpl(
      _$_LinkState _value, $Res Function(_$_LinkState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? links = null,
  }) {
    return _then(_$_LinkState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
    ));
  }
}

/// @nodoc

class _$_LinkState implements _LinkState {
  _$_LinkState({required this.status, final List<Link> links = const []})
      : _links = links;

  @override
  final Status status;
  final List<Link> _links;
  @override
  @JsonKey()
  List<Link> get links {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  String toString() {
    return 'LinkState(status: $status, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LinkState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._links, _links));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_links));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinkStateCopyWith<_$_LinkState> get copyWith =>
      __$$_LinkStateCopyWithImpl<_$_LinkState>(this, _$identity);
}

abstract class _LinkState implements LinkState {
  factory _LinkState({required final Status status, final List<Link> links}) =
      _$_LinkState;

  @override
  Status get status;
  @override
  List<Link> get links;
  @override
  @JsonKey(ignore: true)
  _$$_LinkStateCopyWith<_$_LinkState> get copyWith =>
      throw _privateConstructorUsedError;
}
