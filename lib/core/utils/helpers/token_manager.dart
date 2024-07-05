import 'package:injectable/injectable.dart';

import '../../../features/authentication/data/data_source/local/database_service.dart';

@lazySingleton
class TokenManager {
  final DatabaseService _databaseService;

  TokenManager({required DatabaseService databaseService})
      : _databaseService = databaseService;

  Future<void> storeToken({String? refreshToken, String? accessToken}) async {
    await _databaseService.storeToken(
        refreshToken: refreshToken, accessToken: accessToken);
  }

  Future<String?> getAccessToken() async {
    return await _databaseService.getToken(isAccessToken: true);
  }

  Future<String?> getRefreshToken() async {
    return await _databaseService.getToken(isAccessToken: false);
  }

  Future<void> clearTokens() async {
    await _databaseService.clearToken();
  }

  Future<bool> doesAccessTokenExist() async {
    return await _databaseService.chechIfTokenExist();
  }
}
