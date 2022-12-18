// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'link_register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LinkRegisterState {
  Status get status => throw _privateConstructorUsedError;
  LinkValidation get linkValidation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LinkRegisterStateCopyWith<LinkRegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkRegisterStateCopyWith<$Res> {
  factory $LinkRegisterStateCopyWith(
          LinkRegisterState value, $Res Function(LinkRegisterState) then) =
      _$LinkRegisterStateCopyWithImpl<$Res, LinkRegisterState>;
  @useResult
  $Res call({Status status, LinkValidation linkValidation});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$LinkRegisterStateCopyWithImpl<$Res, $Val extends LinkRegisterState>
    implements $LinkRegisterStateCopyWith<$Res> {
  _$LinkRegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? linkValidation = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      linkValidation: null == linkValidation
          ? _value.linkValidation
          : linkValidation // ignore: cast_nullable_to_non_nullable
              as LinkValidation,
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
abstract class _$$_LinkRegisterStateCopyWith<$Res>
    implements $LinkRegisterStateCopyWith<$Res> {
  factory _$$_LinkRegisterStateCopyWith(_$_LinkRegisterState value,
          $Res Function(_$_LinkRegisterState) then) =
      __$$_LinkRegisterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, LinkValidation linkValidation});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_LinkRegisterStateCopyWithImpl<$Res>
    extends _$LinkRegisterStateCopyWithImpl<$Res, _$_LinkRegisterState>
    implements _$$_LinkRegisterStateCopyWith<$Res> {
  __$$_LinkRegisterStateCopyWithImpl(
      _$_LinkRegisterState _value, $Res Function(_$_LinkRegisterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? linkValidation = null,
  }) {
    return _then(_$_LinkRegisterState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      linkValidation: null == linkValidation
          ? _value.linkValidation
          : linkValidation // ignore: cast_nullable_to_non_nullable
              as LinkValidation,
    ));
  }
}

/// @nodoc

class _$_LinkRegisterState implements _LinkRegisterState {
  _$_LinkRegisterState({required this.status, required this.linkValidation});

  @override
  final Status status;
  @override
  final LinkValidation linkValidation;

  @override
  String toString() {
    return 'LinkRegisterState(status: $status, linkValidation: $linkValidation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LinkRegisterState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.linkValidation, linkValidation) ||
                other.linkValidation == linkValidation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, linkValidation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinkRegisterStateCopyWith<_$_LinkRegisterState> get copyWith =>
      __$$_LinkRegisterStateCopyWithImpl<_$_LinkRegisterState>(
          this, _$identity);
}

abstract class _LinkRegisterState implements LinkRegisterState {
  factory _LinkRegisterState(
      {required final Status status,
      required final LinkValidation linkValidation}) = _$_LinkRegisterState;

  @override
  Status get status;
  @override
  LinkValidation get linkValidation;
  @override
  @JsonKey(ignore: true)
  _$$_LinkRegisterStateCopyWith<_$_LinkRegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
