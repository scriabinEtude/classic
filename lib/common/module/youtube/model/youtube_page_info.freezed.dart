// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'youtube_page_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YoutubePageInfo _$YoutubePageInfoFromJson(Map<String, dynamic> json) {
  return _YoutubePageInfo.fromJson(json);
}

/// @nodoc
mixin _$YoutubePageInfo {
  int get totalResults => throw _privateConstructorUsedError;
  int get resultsPerPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubePageInfoCopyWith<YoutubePageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubePageInfoCopyWith<$Res> {
  factory $YoutubePageInfoCopyWith(
          YoutubePageInfo value, $Res Function(YoutubePageInfo) then) =
      _$YoutubePageInfoCopyWithImpl<$Res, YoutubePageInfo>;
  @useResult
  $Res call({int totalResults, int resultsPerPage});
}

/// @nodoc
class _$YoutubePageInfoCopyWithImpl<$Res, $Val extends YoutubePageInfo>
    implements $YoutubePageInfoCopyWith<$Res> {
  _$YoutubePageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = null,
    Object? resultsPerPage = null,
  }) {
    return _then(_value.copyWith(
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      resultsPerPage: null == resultsPerPage
          ? _value.resultsPerPage
          : resultsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_YoutubePageInfoCopyWith<$Res>
    implements $YoutubePageInfoCopyWith<$Res> {
  factory _$$_YoutubePageInfoCopyWith(
          _$_YoutubePageInfo value, $Res Function(_$_YoutubePageInfo) then) =
      __$$_YoutubePageInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalResults, int resultsPerPage});
}

/// @nodoc
class __$$_YoutubePageInfoCopyWithImpl<$Res>
    extends _$YoutubePageInfoCopyWithImpl<$Res, _$_YoutubePageInfo>
    implements _$$_YoutubePageInfoCopyWith<$Res> {
  __$$_YoutubePageInfoCopyWithImpl(
      _$_YoutubePageInfo _value, $Res Function(_$_YoutubePageInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = null,
    Object? resultsPerPage = null,
  }) {
    return _then(_$_YoutubePageInfo(
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      resultsPerPage: null == resultsPerPage
          ? _value.resultsPerPage
          : resultsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YoutubePageInfo implements _YoutubePageInfo {
  _$_YoutubePageInfo(
      {required this.totalResults, required this.resultsPerPage});

  factory _$_YoutubePageInfo.fromJson(Map<String, dynamic> json) =>
      _$$_YoutubePageInfoFromJson(json);

  @override
  final int totalResults;
  @override
  final int resultsPerPage;

  @override
  String toString() {
    return 'YoutubePageInfo(totalResults: $totalResults, resultsPerPage: $resultsPerPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoutubePageInfo &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.resultsPerPage, resultsPerPage) ||
                other.resultsPerPage == resultsPerPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalResults, resultsPerPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoutubePageInfoCopyWith<_$_YoutubePageInfo> get copyWith =>
      __$$_YoutubePageInfoCopyWithImpl<_$_YoutubePageInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YoutubePageInfoToJson(
      this,
    );
  }
}

abstract class _YoutubePageInfo implements YoutubePageInfo {
  factory _YoutubePageInfo(
      {required final int totalResults,
      required final int resultsPerPage}) = _$_YoutubePageInfo;

  factory _YoutubePageInfo.fromJson(Map<String, dynamic> json) =
      _$_YoutubePageInfo.fromJson;

  @override
  int get totalResults;
  @override
  int get resultsPerPage;
  @override
  @JsonKey(ignore: true)
  _$$_YoutubePageInfoCopyWith<_$_YoutubePageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
