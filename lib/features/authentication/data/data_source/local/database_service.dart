import 'package:injectable/injectable.dart';

import 'database_helper.dart';

@lazySingleton
class DatabaseService {
  DatabaseService({required DatabaseHelper databaseHelper})
      : _databaseHelper = databaseHelper;

  final DatabaseHelper _databaseHelper;
  Future<void> storeToken({String? refreshToken, String? accessToken}) async {
    try {
      final authBox = _databaseHelper.authBox;

      if (refreshToken != null) {
        await authBox.put("refreshToken", refreshToken);
      }

      if (accessToken != null) {
        await authBox.put("accessToken", accessToken);
      }
    } catch (e) {
      print('Error saving token: $e');
    }
  }

  Future<String?> getToken({bool isAccessToken = true}) async {
    try {
      final authBox = _databaseHelper.authBox;
      final tokenKey = isAccessToken ? "accessToken" : "refreshToken";
      final token = authBox.get(tokenKey);

      return token;
    } catch (e) {
      throw Exception('Error Getting Token: ${e.toString()}');
    }
  }

  Future<void> clearToken() async {
    try {
      final authBox = _databaseHelper.authBox;
      authBox.clear();
    } catch (e) {
      throw Exception('Error Clearing Token: ${e.toString()}');
    }
  }

  Future<bool> chechIfTokenExist() async {
    final authBox = _databaseHelper.authBox;
    if (authBox.get("accessToken") != null) {
      return true;
    }
    return false;
  }
}
