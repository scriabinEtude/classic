import 'package:dio/dio.dart';
import 'package:classic/common/module/api/client.dart';
import 'package:classic/common/module/api/client_dio/client_dio_interceptors.dart';
import 'package:classic/common/object/result/result.dart';

class ClientDio implements Client {
  final Dio dio;

  ClientDio(String baseUrl)
      : dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
          ),
        )..interceptors.addAll(dio_interceptors);

  @override
  Future<Result<T>> get<T>({
    required String url,
    Map<String, dynamic>? queryParameters,
    required T Function(Map<String, dynamic> json) parser,
  }) async {
    Response<Map<String, dynamic>> response =
        await dio.get(url, queryParameters: queryParameters);

    return Result<T>.success(parser(response.data!));
  }

  @override
  Future<Result> post({
    required String url,
    Map<String, dynamic>? data,
  }) async {
    Response<Map<String, dynamic>> response = await dio.post(url, data: data);
    if (response.statusCode == 200) {
      return Result.success(null);
    } else {
      return Result.failure(response.statusCode ?? 500, response.statusMessage);
    }
  }

  @override
  Future<Result<T>> postParser<T>({
    required String url,
    Map<String, dynamic>? data,
    required T Function(Map<String, dynamic> json) parser,
  }) async {
    try {
      Response<Map<String, dynamic>> response = await dio.post(url, data: data);
      if (response.statusCode == 200) {
        return Result<T>.success(parser(response.data!));
      } else {
        return Result.failure(
            response.statusCode ?? 500, response.statusMessage);
      }
    } catch (e) {
      print(e);
      return Result.failure(500, e.toString());
    }
  }
}
