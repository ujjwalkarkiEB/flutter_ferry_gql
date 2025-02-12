import 'package:auhentication_gql/common/logger/logger.dart';
import 'package:auhentication_gql/core/utils/constants/striNg_constants.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'database_helper.dart';

@lazySingleton
class DatabaseService {
  DatabaseService({required DatabaseHelper databaseHelper})
      : _databaseHelper = databaseHelper;

  final DatabaseHelper _databaseHelper;

  Future<void> storeToken({String? refreshToken, String? accessToken}) async {
    try {
      final Box<String> authBox = _databaseHelper.authBox;

      if (refreshToken != null) {
        await authBox.put(StringConstants.refreshTokenKey, refreshToken);
      }

      if (accessToken != null) {
        await authBox.put(StringConstants.accessTokenKey, accessToken);
      }
    } catch (e) {
      logger.d('Error saving token: $e');
    }
  }

  Future<String?> getToken({bool isAccessToken = true}) async {
    try {
      final Box<String> authBox = _databaseHelper.authBox;
      final String tokenKey = isAccessToken
          ? StringConstants.accessTokenKey
          : StringConstants.refreshTokenKey;
      final String? token = authBox.get(tokenKey);

      return token;
    } catch (e) {
      throw Exception('Error Getting Token: ${e.toString()}');
    }
  }

  Future<void> clearToken() async {
    try {
      final Box<String> authBox = _databaseHelper.authBox;
      await authBox.clear();
    } catch (e) {
      throw Exception('Error Clearing Token: ${e.toString()}');
    }
  }

  Future<bool> chechIfTokenExist() async {
    final Box<String> authBox = _databaseHelper.authBox;
    if (authBox.get(StringConstants.accessTokenKey) != null) {
      return true;
    }
    return false;
  }
}
