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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Composer composer) register,
    required TResult Function(String composerId, MusicalForm musicalForm)
        registerMusicalForm,
    required TResult Function(
            String composerId, String musicformId, Music music)
        registerMusic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Composer composer)? register,
    TResult? Function(String composerId, MusicalForm musicalForm)?
        registerMusicalForm,
    TResult? Function(String composerId, String musicformId, Music music)?
        registerMusic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Composer composer)? register,
    TResult Function(String composerId, MusicalForm musicalForm)?
        registerMusicalForm,
    TResult Function(String composerId, String musicformId, Music music)?
        registerMusic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ComposerRegisterEventRegister value) register,
    required TResult Function(ComposerRegisterEventRegisterMusicalForm value)
        registerMusicalForm,
    required TResult Function(ComposerRegisterEventRegisterMusic value)
        registerMusic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ComposerRegisterEventRegister value)? register,
    TResult? Function(ComposerRegisterEventRegisterMusicalForm value)?
        registerMusicalForm,
    TResult? Function(ComposerRegisterEventRegisterMusic value)? registerMusic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ComposerRegisterEventRegister value)? register,
    TResult Function(ComposerRegisterEventRegisterMusicalForm value)?
        registerMusicalForm,
    TResult Function(ComposerRegisterEventRegisterMusic value)? registerMusic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComposerRegisterEventCopyWith<$Res> {
  factory $ComposerRegisterEventCopyWith(ComposerRegisterEvent value,
          $Res Function(ComposerRegisterEvent) then) =
      _$ComposerRegisterEventCopyWithImpl<$Res, ComposerRegisterEvent>;
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
}

/// @nodoc
abstract class _$$ComposerRegisterEventRegisterCopyWith<$Res> {
  factory _$$ComposerRegisterEventRegisterCopyWith(
          _$ComposerRegisterEventRegister value,
          $Res Function(_$ComposerRegisterEventRegister) then) =
      __$$ComposerRegisterEventRegisterCopyWithImpl<$Res>;
  @useResult
  $Res call({Composer composer});

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

  @override
  @pragma('vm:prefer-inline')
  $ComposerCopyWith<$Res> get composer {
    return $ComposerCopyWith<$Res>(_value.composer, (value) {
      return _then(_value.copyWith(composer: value));
    });
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
    required TResult Function(String composerId, MusicalForm musicalForm)
        registerMusicalForm,
    required TResult Function(
            String composerId, String musicformId, Music music)
        registerMusic,
  }) {
    return register(composer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Composer composer)? register,
    TResult? Function(String composerId, MusicalForm musicalForm)?
        registerMusicalForm,
    TResult? Function(String composerId, String musicformId, Music music)?
        registerMusic,
  }) {
    return register?.call(composer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Composer composer)? register,
    TResult Function(String composerId, MusicalForm musicalForm)?
        registerMusicalForm,
    TResult Function(String composerId, String musicformId, Music music)?
        registerMusic,
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
    required TResult Function(ComposerRegisterEventRegisterMusicalForm value)
        registerMusicalForm,
    required TResult Function(ComposerRegisterEventRegisterMusic value)
        registerMusic,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ComposerRegisterEventRegister value)? register,
    TResult? Function(ComposerRegisterEventRegisterMusicalForm value)?
        registerMusicalForm,
    TResult? Function(ComposerRegisterEventRegisterMusic value)? registerMusic,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ComposerRegisterEventRegister value)? register,
    TResult Function(ComposerRegisterEventRegisterMusicalForm value)?
        registerMusicalForm,
    TResult Function(ComposerRegisterEventRegisterMusic value)? registerMusic,
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

  Composer get composer;
  @JsonKey(ignore: true)
  _$$ComposerRegisterEventRegisterCopyWith<_$ComposerRegisterEventRegister>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ComposerRegisterEventRegisterMusicalFormCopyWith<$Res> {
  factory _$$ComposerRegisterEventRegisterMusicalFormCopyWith(
          _$ComposerRegisterEventRegisterMusicalForm value,
          $Res Function(_$ComposerRegisterEventRegisterMusicalForm) then) =
      __$$ComposerRegisterEventRegisterMusicalFormCopyWithImpl<$Res>;
  @useResult
  $Res call({String composerId, MusicalForm musicalForm});

  $MusicalFormCopyWith<$Res> get musicalForm;
}

/// @nodoc
class __$$ComposerRegisterEventRegisterMusicalFormCopyWithImpl<$Res>
    extends _$ComposerRegisterEventCopyWithImpl<$Res,
        _$ComposerRegisterEventRegisterMusicalForm>
    implements _$$ComposerRegisterEventRegisterMusicalFormCopyWith<$Res> {
  __$$ComposerRegisterEventRegisterMusicalFormCopyWithImpl(
      _$ComposerRegisterEventRegisterMusicalForm _value,
      $Res Function(_$ComposerRegisterEventRegisterMusicalForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? composerId = null,
    Object? musicalForm = null,
  }) {
    return _then(_$ComposerRegisterEventRegisterMusicalForm(
      null == composerId
          ? _value.composerId
          : composerId // ignore: cast_nullable_to_non_nullable
              as String,
      null == musicalForm
          ? _value.musicalForm
          : musicalForm // ignore: cast_nullable_to_non_nullable
              as MusicalForm,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MusicalFormCopyWith<$Res> get musicalForm {
    return $MusicalFormCopyWith<$Res>(_value.musicalForm, (value) {
      return _then(_value.copyWith(musicalForm: value));
    });
  }
}

/// @nodoc

class _$ComposerRegisterEventRegisterMusicalForm
    implements ComposerRegisterEventRegisterMusicalForm {
  _$ComposerRegisterEventRegisterMusicalForm(this.composerId, this.musicalForm);

  @override
  final String composerId;
  @override
  final MusicalForm musicalForm;

  @override
  String toString() {
    return 'ComposerRegisterEvent.registerMusicalForm(composerId: $composerId, musicalForm: $musicalForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComposerRegisterEventRegisterMusicalForm &&
            (identical(other.composerId, composerId) ||
                other.composerId == composerId) &&
            (identical(other.musicalForm, musicalForm) ||
                other.musicalForm == musicalForm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, composerId, musicalForm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComposerRegisterEventRegisterMusicalFormCopyWith<
          _$ComposerRegisterEventRegisterMusicalForm>
      get copyWith => __$$ComposerRegisterEventRegisterMusicalFormCopyWithImpl<
          _$ComposerRegisterEventRegisterMusicalForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Composer composer) register,
    required TResult Function(String composerId, MusicalForm musicalForm)
        registerMusicalForm,
    required TResult Function(
            String composerId, String musicformId, Music music)
        registerMusic,
  }) {
    return registerMusicalForm(composerId, musicalForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Composer composer)? register,
    TResult? Function(String composerId, MusicalForm musicalForm)?
        registerMusicalForm,
    TResult? Function(String composerId, String musicformId, Music music)?
        registerMusic,
  }) {
    return registerMusicalForm?.call(composerId, musicalForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Composer composer)? register,
    TResult Function(String composerId, MusicalForm musicalForm)?
        registerMusicalForm,
    TResult Function(String composerId, String musicformId, Music music)?
        registerMusic,
    required TResult orElse(),
  }) {
    if (registerMusicalForm != null) {
      return registerMusicalForm(composerId, musicalForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ComposerRegisterEventRegister value) register,
    required TResult Function(ComposerRegisterEventRegisterMusicalForm value)
        registerMusicalForm,
    required TResult Function(ComposerRegisterEventRegisterMusic value)
        registerMusic,
  }) {
    return registerMusicalForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ComposerRegisterEventRegister value)? register,
    TResult? Function(ComposerRegisterEventRegisterMusicalForm value)?
        registerMusicalForm,
    TResult? Function(ComposerRegisterEventRegisterMusic value)? registerMusic,
  }) {
    return registerMusicalForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ComposerRegisterEventRegister value)? register,
    TResult Function(ComposerRegisterEventRegisterMusicalForm value)?
        registerMusicalForm,
    TResult Function(ComposerRegisterEventRegisterMusic value)? registerMusic,
    required TResult orElse(),
  }) {
    if (registerMusicalForm != null) {
      return registerMusicalForm(this);
    }
    return orElse();
  }
}

abstract class ComposerRegisterEventRegisterMusicalForm
    implements ComposerRegisterEvent {
  factory ComposerRegisterEventRegisterMusicalForm(
          final String composerId, final MusicalForm musicalForm) =
      _$ComposerRegisterEventRegisterMusicalForm;

  String get composerId;
  MusicalForm get musicalForm;
  @JsonKey(ignore: true)
  _$$ComposerRegisterEventRegisterMusicalFormCopyWith<
          _$ComposerRegisterEventRegisterMusicalForm>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ComposerRegisterEventRegisterMusicCopyWith<$Res> {
  factory _$$ComposerRegisterEventRegisterMusicCopyWith(
          _$ComposerRegisterEventRegisterMusic value,
          $Res Function(_$ComposerRegisterEventRegisterMusic) then) =
      __$$ComposerRegisterEventRegisterMusicCopyWithImpl<$Res>;
  @useResult
  $Res call({String composerId, String musicformId, Music music});

  $MusicCopyWith<$Res> get music;
}

/// @nodoc
class __$$ComposerRegisterEventRegisterMusicCopyWithImpl<$Res>
    extends _$ComposerRegisterEventCopyWithImpl<$Res,
        _$ComposerRegisterEventRegisterMusic>
    implements _$$ComposerRegisterEventRegisterMusicCopyWith<$Res> {
  __$$ComposerRegisterEventRegisterMusicCopyWithImpl(
      _$ComposerRegisterEventRegisterMusic _value,
      $Res Function(_$ComposerRegisterEventRegisterMusic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? composerId = null,
    Object? musicformId = null,
    Object? music = null,
  }) {
    return _then(_$ComposerRegisterEventRegisterMusic(
      null == composerId
          ? _value.composerId
          : composerId // ignore: cast_nullable_to_non_nullable
              as String,
      null == musicformId
          ? _value.musicformId
          : musicformId // ignore: cast_nullable_to_non_nullable
              as String,
      null == music
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as Music,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MusicCopyWith<$Res> get music {
    return $MusicCopyWith<$Res>(_value.music, (value) {
      return _then(_value.copyWith(music: value));
    });
  }
}

/// @nodoc

class _$ComposerRegisterEventRegisterMusic
    implements ComposerRegisterEventRegisterMusic {
  _$ComposerRegisterEventRegisterMusic(
      this.composerId, this.musicformId, this.music);

  @override
  final String composerId;
  @override
  final String musicformId;
  @override
  final Music music;

  @override
  String toString() {
    return 'ComposerRegisterEvent.registerMusic(composerId: $composerId, musicformId: $musicformId, music: $music)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComposerRegisterEventRegisterMusic &&
            (identical(other.composerId, composerId) ||
                other.composerId == composerId) &&
            (identical(other.musicformId, musicformId) ||
                other.musicformId == musicformId) &&
            (identical(other.music, music) || other.music == music));
  }

  @override
  int get hashCode => Object.hash(runtimeType, composerId, musicformId, music);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComposerRegisterEventRegisterMusicCopyWith<
          _$ComposerRegisterEventRegisterMusic>
      get copyWith => __$$ComposerRegisterEventRegisterMusicCopyWithImpl<
          _$ComposerRegisterEventRegisterMusic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Composer composer) register,
    required TResult Function(String composerId, MusicalForm musicalForm)
        registerMusicalForm,
    required TResult Function(
            String composerId, String musicformId, Music music)
        registerMusic,
  }) {
    return registerMusic(composerId, musicformId, music);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Composer composer)? register,
    TResult? Function(String composerId, MusicalForm musicalForm)?
        registerMusicalForm,
    TResult? Function(String composerId, String musicformId, Music music)?
        registerMusic,
  }) {
    return registerMusic?.call(composerId, musicformId, music);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Composer composer)? register,
    TResult Function(String composerId, MusicalForm musicalForm)?
        registerMusicalForm,
    TResult Function(String composerId, String musicformId, Music music)?
        registerMusic,
    required TResult orElse(),
  }) {
    if (registerMusic != null) {
      return registerMusic(composerId, musicformId, music);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ComposerRegisterEventRegister value) register,
    required TResult Function(ComposerRegisterEventRegisterMusicalForm value)
        registerMusicalForm,
    required TResult Function(ComposerRegisterEventRegisterMusic value)
        registerMusic,
  }) {
    return registerMusic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ComposerRegisterEventRegister value)? register,
    TResult? Function(ComposerRegisterEventRegisterMusicalForm value)?
        registerMusicalForm,
    TResult? Function(ComposerRegisterEventRegisterMusic value)? registerMusic,
  }) {
    return registerMusic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ComposerRegisterEventRegister value)? register,
    TResult Function(ComposerRegisterEventRegisterMusicalForm value)?
        registerMusicalForm,
    TResult Function(ComposerRegisterEventRegisterMusic value)? registerMusic,
    required TResult orElse(),
  }) {
    if (registerMusic != null) {
      return registerMusic(this);
    }
    return orElse();
  }
}

abstract class ComposerRegisterEventRegisterMusic
    implements ComposerRegisterEvent {
  factory ComposerRegisterEventRegisterMusic(
      final String composerId,
      final String musicformId,
      final Music music) = _$ComposerRegisterEventRegisterMusic;

  String get composerId;
  String get musicformId;
  Music get music;
  @JsonKey(ignore: true)
  _$$ComposerRegisterEventRegisterMusicCopyWith<
          _$ComposerRegisterEventRegisterMusic>
      get copyWith => throw _privateConstructorUsedError;
}
