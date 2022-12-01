// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Status {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(int? code) success,
    required TResult Function(int? code, String? message) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(int? code)? success,
    TResult? Function(int? code, String? message)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(int? code)? success,
    TResult Function(int? code, String? message)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusInit value) init,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusSuccess value) success,
    required TResult Function(StatusFail value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusInit value)? init,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusSuccess value)? success,
    TResult? Function(StatusFail value)? fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusInit value)? init,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusSuccess value)? success,
    TResult Function(StatusFail value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StatusInitCopyWith<$Res> {
  factory _$$StatusInitCopyWith(
          _$StatusInit value, $Res Function(_$StatusInit) then) =
      __$$StatusInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusInitCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusInit>
    implements _$$StatusInitCopyWith<$Res> {
  __$$StatusInitCopyWithImpl(
      _$StatusInit _value, $Res Function(_$StatusInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatusInit implements StatusInit {
  _$StatusInit();

  @override
  String toString() {
    return 'Status.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(int? code) success,
    required TResult Function(int? code, String? message) fail,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(int? code)? success,
    TResult? Function(int? code, String? message)? fail,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(int? code)? success,
    TResult Function(int? code, String? message)? fail,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusInit value) init,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusSuccess value) success,
    required TResult Function(StatusFail value) fail,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusInit value)? init,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusSuccess value)? success,
    TResult? Function(StatusFail value)? fail,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusInit value)? init,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusSuccess value)? success,
    TResult Function(StatusFail value)? fail,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class StatusInit implements Status {
  factory StatusInit() = _$StatusInit;
}

/// @nodoc
abstract class _$$StatusLoadingCopyWith<$Res> {
  factory _$$StatusLoadingCopyWith(
          _$StatusLoading value, $Res Function(_$StatusLoading) then) =
      __$$StatusLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusLoadingCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusLoading>
    implements _$$StatusLoadingCopyWith<$Res> {
  __$$StatusLoadingCopyWithImpl(
      _$StatusLoading _value, $Res Function(_$StatusLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatusLoading implements StatusLoading {
  _$StatusLoading();

  @override
  String toString() {
    return 'Status.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(int? code) success,
    required TResult Function(int? code, String? message) fail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(int? code)? success,
    TResult? Function(int? code, String? message)? fail,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(int? code)? success,
    TResult Function(int? code, String? message)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusInit value) init,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusSuccess value) success,
    required TResult Function(StatusFail value) fail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusInit value)? init,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusSuccess value)? success,
    TResult? Function(StatusFail value)? fail,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusInit value)? init,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusSuccess value)? success,
    TResult Function(StatusFail value)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StatusLoading implements Status {
  factory StatusLoading() = _$StatusLoading;
}

/// @nodoc
abstract class _$$StatusSuccessCopyWith<$Res> {
  factory _$$StatusSuccessCopyWith(
          _$StatusSuccess value, $Res Function(_$StatusSuccess) then) =
      __$$StatusSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({int? code});
}

/// @nodoc
class __$$StatusSuccessCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusSuccess>
    implements _$$StatusSuccessCopyWith<$Res> {
  __$$StatusSuccessCopyWithImpl(
      _$StatusSuccess _value, $Res Function(_$StatusSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_$StatusSuccess(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$StatusSuccess implements StatusSuccess {
  _$StatusSuccess({this.code});

  @override
  final int? code;

  @override
  String toString() {
    return 'Status.success(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusSuccess &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusSuccessCopyWith<_$StatusSuccess> get copyWith =>
      __$$StatusSuccessCopyWithImpl<_$StatusSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(int? code) success,
    required TResult Function(int? code, String? message) fail,
  }) {
    return success(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(int? code)? success,
    TResult? Function(int? code, String? message)? fail,
  }) {
    return success?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(int? code)? success,
    TResult Function(int? code, String? message)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusInit value) init,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusSuccess value) success,
    required TResult Function(StatusFail value) fail,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusInit value)? init,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusSuccess value)? success,
    TResult? Function(StatusFail value)? fail,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusInit value)? init,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusSuccess value)? success,
    TResult Function(StatusFail value)? fail,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class StatusSuccess implements Status {
  factory StatusSuccess({final int? code}) = _$StatusSuccess;

  int? get code;
  @JsonKey(ignore: true)
  _$$StatusSuccessCopyWith<_$StatusSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusFailCopyWith<$Res> {
  factory _$$StatusFailCopyWith(
          _$StatusFail value, $Res Function(_$StatusFail) then) =
      __$$StatusFailCopyWithImpl<$Res>;
  @useResult
  $Res call({int? code, String? message});
}

/// @nodoc
class __$$StatusFailCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusFail>
    implements _$$StatusFailCopyWith<$Res> {
  __$$StatusFailCopyWithImpl(
      _$StatusFail _value, $Res Function(_$StatusFail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$StatusFail(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StatusFail implements StatusFail {
  _$StatusFail({this.code, this.message});

  @override
  final int? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'Status.fail(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusFail &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusFailCopyWith<_$StatusFail> get copyWith =>
      __$$StatusFailCopyWithImpl<_$StatusFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(int? code) success,
    required TResult Function(int? code, String? message) fail,
  }) {
    return fail(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(int? code)? success,
    TResult? Function(int? code, String? message)? fail,
  }) {
    return fail?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(int? code)? success,
    TResult Function(int? code, String? message)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusInit value) init,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusSuccess value) success,
    required TResult Function(StatusFail value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusInit value)? init,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusSuccess value)? success,
    TResult? Function(StatusFail value)? fail,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusInit value)? init,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusSuccess value)? success,
    TResult Function(StatusFail value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class StatusFail implements Status {
  factory StatusFail({final int? code, final String? message}) = _$StatusFail;

  int? get code;
  String? get message;
  @JsonKey(ignore: true)
  _$$StatusFailCopyWith<_$StatusFail> get copyWith =>
      throw _privateConstructorUsedError;
}
