import 'package:classic/common/module/api/result.dart';

abstract class Client {
  Future<Result<T>> get<T>({
    required String url,
    Map<String, dynamic>? queryParameters,
    required T Function(Map<String, dynamic> json) parser,
  });
  Future<Result> post({
    required String url,
    Map<String, dynamic>? data,
  });
  Future<Result<T>> postParser<T>({
    required String url,
    Map<String, dynamic>? data,
    required T Function(Map<String, dynamic> json) parser,
  });
}
