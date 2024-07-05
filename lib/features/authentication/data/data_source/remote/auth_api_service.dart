import 'dart:async';

import 'package:auhentication_gql/core/utils/resources/data_state.dart';
import 'package:auhentication_gql/graphql/graphql_client.dart';
import 'package:auhentication_gql/graphql/mutation/gql_g_files/sign_up.req.gql.dart';
import 'package:injectable/injectable.dart';

import '../../../../../graphql/mutation/gql_g_files/sign_in.req.gql.dart';

@lazySingleton
class UserApiService {
  UserApiService({required this.gqlClient});

  final GraphqlUserClient gqlClient;

  Future<DataState<String, String>> signInUser(
      {required String email, required String password}) async {
    try {
      late final String refreshToken;
      String? errorMsg;

      final GSignInUserReq signInReq = GSignInUserReq((b) => b
        ..vars.input.email = email
        ..vars.input.password = password);
      final Completer<void> completer = Completer<void>();

      gqlClient.client.request(signInReq).listen((response) {
        if (response.data!.signIn == null) {
          errorMsg = response.graphqlErrors!.first.message;
        } else {
          refreshToken = response.data!.signIn!.token;
        }
        completer.complete();
      });
      await completer.future;
      if (errorMsg != null) {
        return DataError(errorMsg!);
      }
      return DataSucces(refreshToken);
    } catch (e) {
      throw Exception('Signup Failed" ${e.toString()}');
    }
  }

  Future<String> signUpUser(
      {required String email, required String password}) async {
    try {
      late final accessToken;
      final signUpReq = GSignUpUserReq((b) => b
        ..vars.input.email = email
        ..vars.input.password = password);
      final Completer<void> completer = Completer<void>();

      gqlClient.client.request(signUpReq).listen((response) {
        print('resp: $response');
        accessToken = response.data!.signUp!.token;
        completer.complete();
      });

      await completer.future;

      return accessToken;
    } catch (e) {
      throw Exception('SigIn Failed" ${e.toString()}');
    }
  }
}
