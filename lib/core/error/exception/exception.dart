class ServerException implements Exception {
  ServerException(this.message);
  final String? message;
}

class DatabaseException implements Exception {}

class UnknownErrorException implements Exception {}
