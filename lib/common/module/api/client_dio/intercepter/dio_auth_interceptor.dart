import 'package:dio/dio.dart';
import 'package:classic/common/module/secure_storage/secure_storage.dart';

class PrettyDioLogger extends Interceptor {
  final JWTStorage _jwtStorage = JWTStorage();

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll(
      (await _jwtStorage.jwtGet()).toJson(),
    );
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: 토큰 만료되면 재발급, 재발급도 실패하면 error return
    super.onResponse(response, handler);
  }
}
