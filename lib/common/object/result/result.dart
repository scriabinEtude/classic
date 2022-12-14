// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result {
  static const int CODE_FAILURE = 1000;

  factory Result.success(T data) = Success<T>;
  factory Result.failure(
    int status,
    String? message,
  ) = Failure;
}
