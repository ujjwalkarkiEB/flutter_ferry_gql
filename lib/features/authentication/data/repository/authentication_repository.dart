import 'dart:convert';
import 'dart:developer';

import 'package:auhentication_gql/core/error/exception/exception.dart';
import 'package:auhentication_gql/core/utils/helpers/token_manager.dart';
import 'package:auhentication_gql/features/authentication/data/data_source/remote/auth_api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure/failure.dart';
import '../../../../core/utils/constants/string_constants.dart';

@lazySingleton
class AuthenticationRepository {
  AuthenticationRepository(
      {required TokenManager tokenManager,
      required UserApiService userApiService})
      : _tokenManager = tokenManager,
        _userApiService = userApiService;
  final UserApiService _userApiService;
  final TokenManager _tokenManager;

  /// Authenticates user using [email] and [password].
  ///  Stores the token recieved in the database.
  /// Returns [Either] type with error msg wrapped in [Failure] otherwise null to mark success.
  Future<Either<Failure, void>> signInUser(
      {required String email, required String password}) async {
    try {
      final String encodedTokens =
          await _userApiService.signInUser(email: email, password: password);

      final Map<String, dynamic> tokens = json.decode(encodedTokens);
      final String? accessToken = tokens[StringConstants.accessTokenKey];
      final String? refreshToken = tokens[StringConstants.refreshTokenKey];

      await _tokenManager.storeToken(
          accessToken: accessToken!, refreshToken: refreshToken!);

      return right(null);
    } on ServerException catch (e) {
      return left(ServerFailure(e.message!));
    } catch (e) {
      log('Signin unexpected error! ${e.toString()}');
      return left(UnknownFailure('An unexpected error occurred'));
    }
  }

  Future<void> signUpUser(
      {required String email, required String password}) async {
    try {
      await _userApiService.signUpUser(email: email, password: password);
    } on ServerException catch (e) {
      throw e.message!;
    } catch (e) {
      throw 'Unknown error occured!';
    }
  }

  /// clears stored tokens to mark the user to be loggedout
  Future<void> logoutUser() async {
    try {
      await _tokenManager.clearTokens();
    } catch (e) {
      throw Exception('Logout Failed" ${e.toString()}');
    }
  }
}
