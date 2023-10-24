import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dio_interceptor.dart';

final dioProvider = Provider(
  (ref) {
    final Dio dio = Dio();

    dio.options.baseUrl = "https://dummyjson.com/";
    dio.options.connectTimeout = const Duration(seconds: 10);
    dio.options.receiveTimeout = const Duration(seconds: 10);

    dio.interceptors.addAll(
      [DioInterceptor(dio: dio)],
    );
    return dio;
  },
);
