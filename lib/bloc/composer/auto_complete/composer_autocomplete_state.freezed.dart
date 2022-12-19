// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'composer_autocomplete_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComposerAutoCompleteState {
  Status get status => throw _privateConstructorUsedError;
  List<Composer> get composers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComposerAutoCompleteStateCopyWith<ComposerAutoCompleteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComposerAutoCompleteStateCopyWith<$Res> {
  factory $ComposerAutoCompleteStateCopyWith(ComposerAutoCompleteState value,
          $Res Function(ComposerAutoCompleteState) then) =
      _$ComposerAutoCompleteStateCopyWithImpl<$Res, ComposerAutoCompleteState>;
  @useResult
  $Res call({Status status, List<Composer> composers});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ComposerAutoCompleteStateCopyWithImpl<$Res,
        $Val extends ComposerAutoCompleteState>
    implements $ComposerAutoCompleteStateCopyWith<$Res> {
  _$ComposerAutoCompleteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? composers = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      composers: null == composers
          ? _value.composers
          : composers // ignore: cast_nullable_to_non_nullable
              as List<Composer>,
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
abstract class _$$_ComposerAutoCompleteStateCopyWith<$Res>
    implements $ComposerAutoCompleteStateCopyWith<$Res> {
  factory _$$_ComposerAutoCompleteStateCopyWith(
          _$_ComposerAutoCompleteState value,
          $Res Function(_$_ComposerAutoCompleteState) then) =
      __$$_ComposerAutoCompleteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<Composer> composers});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_ComposerAutoCompleteStateCopyWithImpl<$Res>
    extends _$ComposerAutoCompleteStateCopyWithImpl<$Res,
        _$_ComposerAutoCompleteState>
    implements _$$_ComposerAutoCompleteStateCopyWith<$Res> {
  __$$_ComposerAutoCompleteStateCopyWithImpl(
      _$_ComposerAutoCompleteState _value,
      $Res Function(_$_ComposerAutoCompleteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? composers = null,
  }) {
    return _then(_$_ComposerAutoCompleteState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      composers: null == composers
          ? _value._composers
          : composers // ignore: cast_nullable_to_non_nullable
              as List<Composer>,
    ));
  }
}

/// @nodoc

class _$_ComposerAutoCompleteState implements _ComposerAutoCompleteState {
  _$_ComposerAutoCompleteState(
      {required this.status, final List<Composer> composers = const []})
      : _composers = composers;

  @override
  final Status status;
  final List<Composer> _composers;
  @override
  @JsonKey()
  List<Composer> get composers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_composers);
  }

  @override
  String toString() {
    return 'ComposerAutoCompleteState(status: $status, composers: $composers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComposerAutoCompleteState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._composers, _composers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_composers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComposerAutoCompleteStateCopyWith<_$_ComposerAutoCompleteState>
      get copyWith => __$$_ComposerAutoCompleteStateCopyWithImpl<
          _$_ComposerAutoCompleteState>(this, _$identity);
}

abstract class _ComposerAutoCompleteState implements ComposerAutoCompleteState {
  factory _ComposerAutoCompleteState(
      {required final Status status,
      final List<Composer> composers}) = _$_ComposerAutoCompleteState;

  @override
  Status get status;
  @override
  List<Composer> get composers;
  @override
  @JsonKey(ignore: true)
  _$$_ComposerAutoCompleteStateCopyWith<_$_ComposerAutoCompleteState>
      get copyWith => throw _privateConstructorUsedError;
}
