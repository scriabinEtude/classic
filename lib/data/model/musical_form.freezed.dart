// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'musical_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MusicalForm _$MusicalFormFromJson(Map<String, dynamic> json) {
  return _MusicalForm.fromJson(json);
}

/// @nodoc
mixin _$MusicalForm {
  String get name => throw _privateConstructorUsedError;
  List<Music> get musics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MusicalFormCopyWith<MusicalForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicalFormCopyWith<$Res> {
  factory $MusicalFormCopyWith(
          MusicalForm value, $Res Function(MusicalForm) then) =
      _$MusicalFormCopyWithImpl<$Res, MusicalForm>;
  @useResult
  $Res call({String name, List<Music> musics});
}

/// @nodoc
class _$MusicalFormCopyWithImpl<$Res, $Val extends MusicalForm>
    implements $MusicalFormCopyWith<$Res> {
  _$MusicalFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? musics = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      musics: null == musics
          ? _value.musics
          : musics // ignore: cast_nullable_to_non_nullable
              as List<Music>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MusicalFormCopyWith<$Res>
    implements $MusicalFormCopyWith<$Res> {
  factory _$$_MusicalFormCopyWith(
          _$_MusicalForm value, $Res Function(_$_MusicalForm) then) =
      __$$_MusicalFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<Music> musics});
}

/// @nodoc
class __$$_MusicalFormCopyWithImpl<$Res>
    extends _$MusicalFormCopyWithImpl<$Res, _$_MusicalForm>
    implements _$$_MusicalFormCopyWith<$Res> {
  __$$_MusicalFormCopyWithImpl(
      _$_MusicalForm _value, $Res Function(_$_MusicalForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? musics = null,
  }) {
    return _then(_$_MusicalForm(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      musics: null == musics
          ? _value._musics
          : musics // ignore: cast_nullable_to_non_nullable
              as List<Music>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MusicalForm implements _MusicalForm {
  _$_MusicalForm({required this.name, final List<Music> musics = const []})
      : _musics = musics;

  factory _$_MusicalForm.fromJson(Map<String, dynamic> json) =>
      _$$_MusicalFormFromJson(json);

  @override
  final String name;
  final List<Music> _musics;
  @override
  @JsonKey()
  List<Music> get musics {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_musics);
  }

  @override
  String toString() {
    return 'MusicalForm(name: $name, musics: $musics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MusicalForm &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._musics, _musics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_musics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MusicalFormCopyWith<_$_MusicalForm> get copyWith =>
      __$$_MusicalFormCopyWithImpl<_$_MusicalForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MusicalFormToJson(
      this,
    );
  }
}

abstract class _MusicalForm implements MusicalForm {
  factory _MusicalForm({required final String name, final List<Music> musics}) =
      _$_MusicalForm;

  factory _MusicalForm.fromJson(Map<String, dynamic> json) =
      _$_MusicalForm.fromJson;

  @override
  String get name;
  @override
  List<Music> get musics;
  @override
  @JsonKey(ignore: true)
  _$$_MusicalFormCopyWith<_$_MusicalForm> get copyWith =>
      throw _privateConstructorUsedError;
}
