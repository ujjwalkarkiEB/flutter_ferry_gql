import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../interceptor/auth_intercptor.dart';

@lazySingleton
class DioClient {
  DioClient(AuthInterceptor authInterceptor) : _dio = Dio() {
    _dio.interceptors.add(authInterceptor);
  }
  final Dio _dio;

  Dio get dio => _dio;
}
