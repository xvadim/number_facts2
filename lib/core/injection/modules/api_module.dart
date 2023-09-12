import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ApiModule {
  @singleton
  Dio dioClient() {
    final options = BaseOptions(
      baseUrl: _endPoint,
      headers: {'Content-Type': 'application/json'},
    );

    return Dio(options);
  }

  static const _endPoint = 'http://numbersapi.com';
}
