import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';

final List<Interceptor> dio_interceptors = [
  PrettyDioLogger(
    requestHeader: false,
    queryParameters: true,
    requestBody: true,
    responseHeader: false,
    responseBody: true,
    error: true,
    showProcessingTime: true,
    showCUrl: false,
    canShowLog: kDebugMode,
  ),
];
