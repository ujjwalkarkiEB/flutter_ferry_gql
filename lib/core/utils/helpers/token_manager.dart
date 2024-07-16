import 'package:auhentication_gql/common/injection/injection.dart';
import 'package:auhentication_gql/common/logger/logger.dart';
import 'package:auhentication_gql/core/network/client/dio_client.dart';
import 'package:auhentication_gql/core/network/client/graphql_client.dart';
import 'package:auhentication_gql/graphql/mutation/authentication/gql_g_files/get_refresh_toke.data.gql.dart';
import 'package:auhentication_gql/graphql/mutation/authentication/gql_g_files/get_refresh_toke.req.gql.dart';
import 'package:auhentication_gql/graphql/mutation/authentication/gql_g_files/get_refresh_toke.var.gql.dart';
import 'package:dio/dio.dart';
import 'package:ferry_exec/src/operation_response.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decode/jwt_decode.dart';

import '../../../features/authentication/data/data_source/local/database_service.dart';
import '../../error/exception/api_exception.dart';

abstract class TokenService {
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<void> clearTokens();
  Future<bool> refreshToken();
  Future<void> storeToken({String? refreshToken, String? accessToken});
  Future<bool> doesAccessTokenExist();
  Future<bool> hasSession();
}

@lazySingleton
class TokenManager implements TokenService {
  TokenManager(this._databaseService);
  final DatabaseService _databaseService;

  @override
  Future<void> storeToken({String? refreshToken, String? accessToken}) async {
    await _databaseService.storeToken(
        refreshToken: refreshToken, accessToken: accessToken);
  }

  @override
  Future<String?> getAccessToken() async {
    return await _databaseService.getToken(isAccessToken: true);
  }

  @override
  Future<String?> getRefreshToken() async {
    return await _databaseService.getToken(isAccessToken: false);
  }

  @override
  Future<void> clearTokens() async {
    await _databaseService.clearToken();
  }

  @override
  Future<bool> doesAccessTokenExist() async {
    return await _databaseService.chechIfTokenExist();
  }

  Future<bool> refreshToken() async {
    final GraphqlClient gqlClient = getIt<GraphqlClient>();
    try {
      final String? refreshToken = await getRefreshToken();
      if (refreshToken == null) {
        return false;
      }
      final GRefreshTokenReq refreshTokenReq = GRefreshTokenReq(
          (GRefreshTokenReqBuilder b) => b..vars.refreshToken = refreshToken);

      final OperationResponse<GRefreshTokenData, GRefreshTokenVars> response =
          await gqlClient.client.request(refreshTokenReq).first;
      if (response.hasErrors) {
        return false;
      }
      final String newToken = response.data!.refreshToken!;
      await storeToken(accessToken: newToken);
      return true;
    } catch (e) {
      throw 'Error while refreshing token : ${e.toString()}';
    }
  }

  @override
  Future<bool> hasSession() async {
    try {
      final String? accessToken = await getAccessToken();

      if (accessToken != null) {}
      final bool isExpired = Jwt.isExpired(accessToken!);
      if (isExpired) {
        return false;
      }
      return true;
    } catch (e) {
      logger.e('Error checking token session: ${e.toString()} ');
      throw 'Error: session check';
    }
  }

  Future<Response<Map<String, dynamic>>> fetch(RequestOptions options) async {
    try {
      final Dio _dio = getIt<DioClient>().dio;
      final Response<Map<String, dynamic>> response = await _dio.request(
        options.path,
        data: options.data,
        options: Options(
          headers: options.headers,
          method: options.method,
        ),
      );

      return response;
    } catch (e) {
      throw ApiException.fromDioError(e as DioException);
    }
  }
}
