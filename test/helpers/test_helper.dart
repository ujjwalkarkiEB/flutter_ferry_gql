import 'package:auhentication_gql/core/utils/helpers/token_manager.dart';
import 'package:auhentication_gql/features/authentication/data/data_source/remote/auth_api_service.dart';
import 'package:auhentication_gql/features/authentication/data/repository/authentication_repository.dart';
import 'package:auhentication_gql/features/home/repository/home_repositiory.dart';
import 'package:auhentication_gql/features/home/services/home_api_service.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(<Type>[
  UserApiService,
  TokenManager,
  AuthenticationRepository,
  HomeApiService,
  HomeRepositiory,
])
void main() {}
