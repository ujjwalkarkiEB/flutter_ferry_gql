import 'dart:io';

class StringConstants {
  StringConstants._();
  // hive database
  static const String boxName = 'authBox';

  // graphql server network url
  static final String baseUrl = Platform.isAndroid
      ? 'http://10.0.2.2:8000/graphql'
      : 'http://localhost:8000/graphql';

  // token keys
  static const String accessTokenKey = 'accessToken';
  static const String refreshTokenKey = 'refreshToken';
}
