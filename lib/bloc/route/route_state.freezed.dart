// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'route_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RouteState {
  GoRouter get goRouter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RouteStateCopyWith<RouteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteStateCopyWith<$Res> {
  factory $RouteStateCopyWith(
          RouteState value, $Res Function(RouteState) then) =
      _$RouteStateCopyWithImpl<$Res, RouteState>;
  @useResult
  $Res call({GoRouter goRouter});
}

/// @nodoc
class _$RouteStateCopyWithImpl<$Res, $Val extends RouteState>
    implements $RouteStateCopyWith<$Res> {
  _$RouteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goRouter = null,
  }) {
    return _then(_value.copyWith(
      goRouter: null == goRouter
          ? _value.goRouter
          : goRouter // ignore: cast_nullable_to_non_nullable
              as GoRouter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RouteStateCopyWith<$Res>
    implements $RouteStateCopyWith<$Res> {
  factory _$$_RouteStateCopyWith(
          _$_RouteState value, $Res Function(_$_RouteState) then) =
      __$$_RouteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GoRouter goRouter});
}

/// @nodoc
class __$$_RouteStateCopyWithImpl<$Res>
    extends _$RouteStateCopyWithImpl<$Res, _$_RouteState>
    implements _$$_RouteStateCopyWith<$Res> {
  __$$_RouteStateCopyWithImpl(
      _$_RouteState _value, $Res Function(_$_RouteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goRouter = null,
  }) {
    return _then(_$_RouteState(
      goRouter: null == goRouter
          ? _value.goRouter
          : goRouter // ignore: cast_nullable_to_non_nullable
              as GoRouter,
    ));
  }
}

/// @nodoc

class _$_RouteState implements _RouteState {
  _$_RouteState({required this.goRouter});

  @override
  final GoRouter goRouter;

  @override
  String toString() {
    return 'RouteState(goRouter: $goRouter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouteState &&
            (identical(other.goRouter, goRouter) ||
                other.goRouter == goRouter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, goRouter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RouteStateCopyWith<_$_RouteState> get copyWith =>
      __$$_RouteStateCopyWithImpl<_$_RouteState>(this, _$identity);
}

abstract class _RouteState implements RouteState {
  factory _RouteState({required final GoRouter goRouter}) = _$_RouteState;

  @override
  GoRouter get goRouter;
  @override
  @JsonKey(ignore: true)
  _$$_RouteStateCopyWith<_$_RouteState> get copyWith =>
      throw _privateConstructorUsedError;
}
