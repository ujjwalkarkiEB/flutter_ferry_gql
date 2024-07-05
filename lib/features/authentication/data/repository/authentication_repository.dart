import 'package:auhentication_gql/core/utils/resources/data_state.dart';
import 'package:auhentication_gql/features/authentication/data/data_source/local/database_service.dart';
import 'package:auhentication_gql/features/authentication/data/data_source/remote/user_api_service.dart';
import 'package:injectable/injectable.dart';

import '../../../../common/injection/injection.dart';
import '../../../../core/utils/constants/stribg_constants.dart';
import '../../../../graphql/graphql_client.dart';

@lazySingleton
class AuthenticationRepository {
  final DatabaseService _databaseService;
  final UserApiService _userApiService;

  AuthenticationRepository(
      {required DatabaseService databaseService,
      required UserApiService userApiService})
      : _databaseService = databaseService,
        _userApiService = userApiService;

  /// Authenticates user using [email] and [password].
  ///  Stores the token recieved in the database.
  /// Returns success and error String msg.
  Future<DataState<String, String>> signInUser(
      {required String email, required String password}) async {
    try {
      final data =
          await _userApiService.signInUser(email: email, password: password);

      if (data is DataError) {
        return DataError(data.error!);
      }
      await _databaseService.storeToken(accessToken: data.data);
      // create new graphql client to pass accessToken in the header
      await getIt<GraphqlUserClient>().initializeGraphqlClient(
          url: StringConstants.baseUrl, hasToken: true);

      return DataSucces("Credentials are matched!");
    } catch (e) {
      throw Exception('SignIn Failed" ${e.toString()}');
    }
  }

  Future<void> signUpUser(
      {required String email, required String password}) async {
    try {
      final String refreshToken =
          await _userApiService.signUpUser(email: email, password: password);

      await _databaseService.storeToken(refreshToken: refreshToken);
    } catch (e) {
      throw Exception('Signup Failed" ${e.toString()}');
    }
  }

  /// clears stored tokens to mark the user to be loggedout
  Future<void> logoutUser() async {
    try {
      await _databaseService.clearToken();
    } catch (e) {
      throw Exception('Logout Failed" ${e.toString()}');
    }
  }
}
