import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';

@freezed
abstract class Status with _$Status {
  factory Status.init() = StatusInit;
  factory Status.loading() = StatusLoading;
  factory Status.success({int? code}) = StatusSuccess;
  factory Status.fail({
    int? code,
    String? message,
  }) = StatusFail;
}
