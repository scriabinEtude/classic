// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'composer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Composer _$ComposerFromJson(Map<String, dynamic> json) {
  return _Composer.fromJson(json);
}

/// @nodoc
mixin _$Composer {
  String get name => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  String get engName => throw _privateConstructorUsedError;
  String get engFullname => throw _privateConstructorUsedError;
  List<String> get names => throw _privateConstructorUsedError;
  List<MusicalForm> get musicalForms => throw _privateConstructorUsedError;
  List<String> get thanksto => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComposerCopyWith<Composer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComposerCopyWith<$Res> {
  factory $ComposerCopyWith(Composer value, $Res Function(Composer) then) =
      _$ComposerCopyWithImpl<$Res, Composer>;
  @useResult
  $Res call(
      {String name,
      String fullname,
      String engName,
      String engFullname,
      List<String> names,
      List<MusicalForm> musicalForms,
      List<String> thanksto,
      DateTime createdAt});
}

/// @nodoc
class _$ComposerCopyWithImpl<$Res, $Val extends Composer>
    implements $ComposerCopyWith<$Res> {
  _$ComposerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullname = null,
    Object? engName = null,
    Object? engFullname = null,
    Object? names = null,
    Object? musicalForms = null,
    Object? thanksto = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      engName: null == engName
          ? _value.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String,
      engFullname: null == engFullname
          ? _value.engFullname
          : engFullname // ignore: cast_nullable_to_non_nullable
              as String,
      names: null == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as List<String>,
      musicalForms: null == musicalForms
          ? _value.musicalForms
          : musicalForms // ignore: cast_nullable_to_non_nullable
              as List<MusicalForm>,
      thanksto: null == thanksto
          ? _value.thanksto
          : thanksto // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComposerCopyWith<$Res> implements $ComposerCopyWith<$Res> {
  factory _$$_ComposerCopyWith(
          _$_Composer value, $Res Function(_$_Composer) then) =
      __$$_ComposerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String fullname,
      String engName,
      String engFullname,
      List<String> names,
      List<MusicalForm> musicalForms,
      List<String> thanksto,
      DateTime createdAt});
}

/// @nodoc
class __$$_ComposerCopyWithImpl<$Res>
    extends _$ComposerCopyWithImpl<$Res, _$_Composer>
    implements _$$_ComposerCopyWith<$Res> {
  __$$_ComposerCopyWithImpl(
      _$_Composer _value, $Res Function(_$_Composer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullname = null,
    Object? engName = null,
    Object? engFullname = null,
    Object? names = null,
    Object? musicalForms = null,
    Object? thanksto = null,
    Object? createdAt = null,
  }) {
    return _then(_$_Composer(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      engName: null == engName
          ? _value.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String,
      engFullname: null == engFullname
          ? _value.engFullname
          : engFullname // ignore: cast_nullable_to_non_nullable
              as String,
      names: null == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as List<String>,
      musicalForms: null == musicalForms
          ? _value._musicalForms
          : musicalForms // ignore: cast_nullable_to_non_nullable
              as List<MusicalForm>,
      thanksto: null == thanksto
          ? _value._thanksto
          : thanksto // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Composer extends _Composer {
  _$_Composer(
      {required this.name,
      required this.fullname,
      required this.engName,
      required this.engFullname,
      final List<String> names = const [],
      final List<MusicalForm> musicalForms = const [],
      final List<String> thanksto = const [],
      required this.createdAt})
      : _names = names,
        _musicalForms = musicalForms,
        _thanksto = thanksto,
        super._();

  factory _$_Composer.fromJson(Map<String, dynamic> json) =>
      _$$_ComposerFromJson(json);

  @override
  final String name;
  @override
  final String fullname;
  @override
  final String engName;
  @override
  final String engFullname;
  final List<String> _names;
  @override
  @JsonKey()
  List<String> get names {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_names);
  }

  final List<MusicalForm> _musicalForms;
  @override
  @JsonKey()
  List<MusicalForm> get musicalForms {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_musicalForms);
  }

  final List<String> _thanksto;
  @override
  @JsonKey()
  List<String> get thanksto {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thanksto);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Composer(name: $name, fullname: $fullname, engName: $engName, engFullname: $engFullname, names: $names, musicalForms: $musicalForms, thanksto: $thanksto, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Composer &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.engName, engName) || other.engName == engName) &&
            (identical(other.engFullname, engFullname) ||
                other.engFullname == engFullname) &&
            const DeepCollectionEquality().equals(other._names, _names) &&
            const DeepCollectionEquality()
                .equals(other._musicalForms, _musicalForms) &&
            const DeepCollectionEquality().equals(other._thanksto, _thanksto) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      fullname,
      engName,
      engFullname,
      const DeepCollectionEquality().hash(_names),
      const DeepCollectionEquality().hash(_musicalForms),
      const DeepCollectionEquality().hash(_thanksto),
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComposerCopyWith<_$_Composer> get copyWith =>
      __$$_ComposerCopyWithImpl<_$_Composer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComposerToJson(
      this,
    );
  }
}

abstract class _Composer extends Composer {
  factory _Composer(
      {required final String name,
      required final String fullname,
      required final String engName,
      required final String engFullname,
      final List<String> names,
      final List<MusicalForm> musicalForms,
      final List<String> thanksto,
      required final DateTime createdAt}) = _$_Composer;
  _Composer._() : super._();

  factory _Composer.fromJson(Map<String, dynamic> json) = _$_Composer.fromJson;

  @override
  String get name;
  @override
  String get fullname;
  @override
  String get engName;
  @override
  String get engFullname;
  @override
  List<String> get names;
  @override
  List<MusicalForm> get musicalForms;
  @override
  List<String> get thanksto;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ComposerCopyWith<_$_Composer> get copyWith =>
      throw _privateConstructorUsedError;
}
