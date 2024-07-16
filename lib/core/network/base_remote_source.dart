// import 'dart:convert';
// import 'package:dio/dio.dart';
// import '../errors/api_exception.dart';

// class BaseRemoteSource {
//   BaseRemoteSource(this._dio);
//   final Dio _dio;

//   Future<T> networkRequest<T>({
//     required Future<Response> Function(Dio dio) request,
//     required T Function(dynamic data, Headers? headers) onResponse,
//   }) async {
//     try {
//       final response = await request(_dio);
//       if (response.statusCode! >= 200 && response.statusCode! < 300) {
//         return onResponse(response.data, response.headers);
//       } else {
//         throw ApiException.serverException(message: 'Something went wrong');
//       }
//     } on DioError catch (e) {
//       throw ApiException.serverException(message: e.message);
//     }
//   }
// }
