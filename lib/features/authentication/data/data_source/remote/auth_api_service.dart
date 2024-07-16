import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:auhentication_gql/core/error/exception/exception.dart';
import 'package:auhentication_gql/core/network/client/graphql_client.dart';
import 'package:auhentication_gql/graphql/mutation/authentication/gql_g_files/sign_in.data.gql.dart';
import 'package:auhentication_gql/graphql/mutation/authentication/gql_g_files/sign_in.req.gql.dart';
import 'package:auhentication_gql/graphql/mutation/authentication/gql_g_files/sign_in.var.gql.dart';
import 'package:auhentication_gql/graphql/mutation/authentication/gql_g_files/sign_up.data.gql.dart';
import 'package:auhentication_gql/graphql/mutation/authentication/gql_g_files/sign_up.var.gql.dart';

import 'package:ferry_exec/src/operation_response.dart';
import 'package:injectable/injectable.dart';
import '../../../../../graphql/mutation/authentication/gql_g_files/sign_up.req.gql.dart';

@lazySingleton
class UserApiService {
  UserApiService({required this.gqlClient});

  final GraphqlClient gqlClient;

  Future<String> signInUser(
      {required String email, required String password}) async {
    final GLoginReq signInReq = GLoginReq((GLoginReqBuilder b) => b
      ..vars.input.email = email
      ..vars.input.password = password);

    final OperationResponse<GLoginData, GLoginVars> response =
        await gqlClient.client.request(signInReq).first;

    if (response.hasErrors) {
      log('resp: ${response.graphqlErrors?.first.extensions}');
      final String? errorMsg = response.graphqlErrors?.first.message;
      throw ServerException(errorMsg ?? 'Something went wrong!');
    }
    final String refreshToken = response.data!.login!.refreshToken;
    final String accessToken = response.data!.login!.accessToken;

    return json.encode(<String, String>{
      'accessToken': accessToken,
      'refreshToken': refreshToken
    });
  }

  Future<void> signUpUser(
      {required String email, required String password}) async {
    try {
      String? errorMsg;

      final GSignUpUserReq signUpReq =
          GSignUpUserReq((GSignUpUserReqBuilder b) => b
            ..vars.input.email = email
            ..vars.input.password = password
            ..vars.input.repeatPassword = password);

      final OperationResponse<GSignUpUserData, GSignUpUserVars> response =
          await gqlClient.client.request(signUpReq).first;
      if (response.data!.register == null) {
        errorMsg = response.graphqlErrors?.first.message;
        throw ServerException(errorMsg ?? 'Unknown server error');
      }
    } catch (e) {
      throw UnknownErrorException();
    }
  }
}
