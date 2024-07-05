import 'package:auhentication_gql/core/utils/resources/data_state.dart';
import 'package:auhentication_gql/features/home/data/data_source/remote/home_api_service.dart';
import 'package:injectable/injectable.dart';

import '../../../../graphql/query/gql_g_files/current_user.data.gql.dart';

@lazySingleton
class UserRepository {
  final HomeApiService _homeApiService;

  UserRepository({required HomeApiService homeApiService})
      : _homeApiService = homeApiService;

  Future<DataState<GGetCurrentAuthenticatedUserDetailsData_currentUser, String>>
      getUserData() async {
    final data = await _homeApiService.getUserData();
    if (data is DataError) {
      return DataError(data.error!);
    }
    return DataSucces(data.data!);
  }
}
