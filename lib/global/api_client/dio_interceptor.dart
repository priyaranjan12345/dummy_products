import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dio_error_handler.dart';

class DioInterceptor extends Interceptor {
  late Dio dio;
  DioInterceptor({required this.dio});
  Stopwatch? stopwatch;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint("Request url: ${options.baseUrl}/${options.path}");
    debugPrint("Request method: ${options.method}");
    debugPrint("Request data: ${options.data}");

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint("Response url: ${response.realUri}");
    debugPrint("Response data: ${response.data}");

    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint("Error type: ${err.type}");
    debugPrint("Error message: ${err.message}");
    debugPrint("Error type: ${err.response}");

    dioApiErrorHandler(err, handler, dio);
  }
}
