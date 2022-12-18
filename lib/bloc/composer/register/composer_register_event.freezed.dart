// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'composer_register_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComposerRegisterEvent {
  Composer get composer => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Composer composer) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Composer composer)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Composer composer)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ComposerRegisterEventRegister value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ComposerRegisterEventRegister value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ComposerRegisterEventRegister value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComposerRegisterEventCopyWith<ComposerRegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComposerRegisterEventCopyWith<$Res> {
  factory $ComposerRegisterEventCopyWith(ComposerRegisterEvent value,
          $Res Function(ComposerRegisterEvent) then) =
      _$ComposerRegisterEventCopyWithImpl<$Res, ComposerRegisterEvent>;
  @useResult
  $Res call({Composer composer});

  $ComposerCopyWith<$Res> get composer;
}

/// @nodoc
class _$ComposerRegisterEventCopyWithImpl<$Res,
        $Val extends ComposerRegisterEvent>
    implements $ComposerRegisterEventCopyWith<$Res> {
  _$ComposerRegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? composer = null,
  }) {
    return _then(_value.copyWith(
      composer: null == composer
          ? _value.composer
          : composer // ignore: cast_nullable_to_non_nullable
              as Composer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ComposerCopyWith<$Res> get composer {
    return $ComposerCopyWith<$Res>(_value.composer, (value) {
      return _then(_value.copyWith(composer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ComposerRegisterEventRegisterCopyWith<$Res>
    implements $ComposerRegisterEventCopyWith<$Res> {
  factory _$$ComposerRegisterEventRegisterCopyWith(
          _$ComposerRegisterEventRegister value,
          $Res Function(_$ComposerRegisterEventRegister) then) =
      __$$ComposerRegisterEventRegisterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Composer composer});

  @override
  $ComposerCopyWith<$Res> get composer;
}

/// @nodoc
class __$$ComposerRegisterEventRegisterCopyWithImpl<$Res>
    extends _$ComposerRegisterEventCopyWithImpl<$Res,
        _$ComposerRegisterEventRegister>
    implements _$$ComposerRegisterEventRegisterCopyWith<$Res> {
  __$$ComposerRegisterEventRegisterCopyWithImpl(
      _$ComposerRegisterEventRegister _value,
      $Res Function(_$ComposerRegisterEventRegister) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? composer = null,
  }) {
    return _then(_$ComposerRegisterEventRegister(
      null == composer
          ? _value.composer
          : composer // ignore: cast_nullable_to_non_nullable
              as Composer,
    ));
  }
}

/// @nodoc

class _$ComposerRegisterEventRegister implements ComposerRegisterEventRegister {
  _$ComposerRegisterEventRegister(this.composer);

  @override
  final Composer composer;

  @override
  String toString() {
    return 'ComposerRegisterEvent.register(composer: $composer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComposerRegisterEventRegister &&
            (identical(other.composer, composer) ||
                other.composer == composer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, composer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComposerRegisterEventRegisterCopyWith<_$ComposerRegisterEventRegister>
      get copyWith => __$$ComposerRegisterEventRegisterCopyWithImpl<
          _$ComposerRegisterEventRegister>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Composer composer) register,
  }) {
    return register(composer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Composer composer)? register,
  }) {
    return register?.call(composer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Composer composer)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(composer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ComposerRegisterEventRegister value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ComposerRegisterEventRegister value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ComposerRegisterEventRegister value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class ComposerRegisterEventRegister implements ComposerRegisterEvent {
  factory ComposerRegisterEventRegister(final Composer composer) =
      _$ComposerRegisterEventRegister;

  @override
  Composer get composer;
  @override
  @JsonKey(ignore: true)
  _$$ComposerRegisterEventRegisterCopyWith<_$ComposerRegisterEventRegister>
      get copyWith => throw _privateConstructorUsedError;
}
