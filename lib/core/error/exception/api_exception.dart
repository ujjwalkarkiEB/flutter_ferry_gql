import 'package:dio/dio.dart';

class ApiException implements Exception {
  factory ApiException.fromDioError(DioException error) {
    String errorMessage = 'Unknown error occurred';
    switch (error.type) {
      case DioExceptionType.cancel:
        errorMessage = 'Request cancelled';
        break;
      case DioExceptionType.connectionTimeout:
        errorMessage = 'Connection timeout';
        break;
      case DioExceptionType.sendTimeout:
        errorMessage = 'Send timeout';
        break;
      case DioExceptionType.receiveTimeout:
        errorMessage = 'Receive timeout';
        break;
      case DioExceptionType.badResponse:
        final int? statusCode = error.response?.statusCode;
        if (statusCode == 401 || statusCode == 403) {
          errorMessage = 'Unauthorized';
          return ApiException.unauthorizedError(message: errorMessage);
        }
        errorMessage = 'HTTP error: $statusCode';
        break;
      case DioExceptionType.unknown:
        errorMessage = 'Network error';
        break;
      case DioExceptionType.badCertificate:
        errorMessage = 'Incorrect certificate';

        break;
      case DioExceptionType.connectionError:
        errorMessage = 'Conection error';

        break;
    }
    return ApiException.serverError(message: errorMessage);
  }
  ApiException(this.message);
  final String message;

  // Specific exceptions
  static ApiException serverError({required String message}) =>
      ApiException('Server error: $message');

  static ApiException connectionError({required String message}) =>
      ApiException('Connection error: $message');

  static ApiException invalidResponse({required String message}) =>
      ApiException('Invalid response: $message');

  static ApiException unauthorizedError({required String message}) =>
      ApiException('Unauthorized: $message');

  static ApiException clientError({required String message}) =>
      ApiException('Client error: $message');

  static ApiException timeoutError({required String message}) =>
      ApiException('Timeout error: $message');

  static ApiException unknownError({required String message}) =>
      ApiException('Unknown error: $message');

  @override
  String toString() => 'ApiException: $message';
}
