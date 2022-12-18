// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'composer_register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComposerRegisterState {
  Status get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComposerRegisterStateCopyWith<ComposerRegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComposerRegisterStateCopyWith<$Res> {
  factory $ComposerRegisterStateCopyWith(ComposerRegisterState value,
          $Res Function(ComposerRegisterState) then) =
      _$ComposerRegisterStateCopyWithImpl<$Res, ComposerRegisterState>;
  @useResult
  $Res call({Status status});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ComposerRegisterStateCopyWithImpl<$Res,
        $Val extends ComposerRegisterState>
    implements $ComposerRegisterStateCopyWith<$Res> {
  _$ComposerRegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
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
abstract class _$$_ComposerRegisterStateCopyWith<$Res>
    implements $ComposerRegisterStateCopyWith<$Res> {
  factory _$$_ComposerRegisterStateCopyWith(_$_ComposerRegisterState value,
          $Res Function(_$_ComposerRegisterState) then) =
      __$$_ComposerRegisterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_ComposerRegisterStateCopyWithImpl<$Res>
    extends _$ComposerRegisterStateCopyWithImpl<$Res, _$_ComposerRegisterState>
    implements _$$_ComposerRegisterStateCopyWith<$Res> {
  __$$_ComposerRegisterStateCopyWithImpl(_$_ComposerRegisterState _value,
      $Res Function(_$_ComposerRegisterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_ComposerRegisterState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$_ComposerRegisterState implements _ComposerRegisterState {
  _$_ComposerRegisterState({required this.status});

  @override
  final Status status;

  @override
  String toString() {
    return 'ComposerRegisterState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComposerRegisterState &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComposerRegisterStateCopyWith<_$_ComposerRegisterState> get copyWith =>
      __$$_ComposerRegisterStateCopyWithImpl<_$_ComposerRegisterState>(
          this, _$identity);
}

abstract class _ComposerRegisterState implements ComposerRegisterState {
  factory _ComposerRegisterState({required final Status status}) =
      _$_ComposerRegisterState;

  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$_ComposerRegisterStateCopyWith<_$_ComposerRegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
