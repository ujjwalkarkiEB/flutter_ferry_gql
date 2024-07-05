import 'dart:async';

import 'package:auhentication_gql/core/utils/resources/data_state.dart';
import 'package:auhentication_gql/graphql/graphql_client.dart';
import 'package:auhentication_gql/graphql/query/gql_g_files/current_user.req.gql.dart';
import 'package:injectable/injectable.dart';

import '../../../../../graphql/query/gql_g_files/current_user.data.gql.dart';

@lazySingleton
class HomeApiService {
  final GraphqlUserClient _graphqlUserClient;

  HomeApiService({required GraphqlUserClient graphqlUserClient})
      : _graphqlUserClient = graphqlUserClient;

  Future<DataState<GGetCurrentAuthenticatedUserDetailsData_currentUser, String>>
      getUserData() async {
    try {
      late final userData;
      String? errorMsg;

      final gqlClient = _graphqlUserClient;
      final currentUserGetDataReq = GGetCurrentAuthenticatedUserDetailsReq();
      final Completer<void> completer = Completer<void>();

      gqlClient.client.request(currentUserGetDataReq).listen((response) {
        print("response: ${response.data!.currentUser}");

        if (!response.hasErrors) {
          userData = response.data!.currentUser;
        } else {
          errorMsg = response.graphqlErrors!.first.message;
        }

        completer.complete();
      });
      await completer.future;
      if (errorMsg != null) {
        return DataError(errorMsg!);
      }
      return DataSucces(userData);
    } catch (e) {
      throw Exception("Failed to get user data: ${e.toString()}");
    }
  }
}
