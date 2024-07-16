// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../core/network/client/dio_client.dart' as _i8;
import '../../core/network/client/graphql_client.dart' as _i9;
import '../../core/network/interceptor/auth_intercptor.dart' as _i7;
import '../../core/utils/helpers/token_manager.dart' as _i6;
import '../../features/authentication/data/data_source/local/database_helper.dart'
    as _i3;
import '../../features/authentication/data/data_source/local/database_service.dart'
    as _i5;
import '../../features/authentication/data/data_source/remote/auth_api_service.dart'
    as _i11;
import '../../features/authentication/data/repository/authentication_repository.dart'
    as _i12;
import '../../features/authentication/presentation/bloc/auth_bloc.dart' as _i14;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i15;
import '../../features/home/repository/home_repositiory.dart' as _i13;
import '../../features/home/services/home_api_service.dart' as _i10;
import '../../graphql/graphql_client.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DatabaseHelper>(() => _i3.DatabaseHelper());
    gh.lazySingleton<_i4.GraphqlUserClient>(() => _i4.GraphqlUserClient());
    gh.lazySingleton<_i5.DatabaseService>(
        () => _i5.DatabaseService(databaseHelper: gh<_i3.DatabaseHelper>()));
    gh.lazySingleton<_i6.TokenManager>(
        () => _i6.TokenManager(gh<_i5.DatabaseService>()));
    gh.lazySingleton<_i7.AuthInterceptor>(
        () => _i7.AuthInterceptor(gh<_i6.TokenManager>()));
    gh.lazySingleton<_i8.DioClient>(
        () => _i8.DioClient(gh<_i7.AuthInterceptor>()));
    gh.lazySingleton<_i9.GraphqlClient>(
        () => _i9.GraphqlClient(dioClient: gh<_i8.DioClient>()));
    gh.lazySingleton<_i10.HomeApiService>(
        () => _i10.HomeApiService(gh<_i9.GraphqlClient>()));
    gh.lazySingleton<_i11.UserApiService>(
        () => _i11.UserApiService(gqlClient: gh<_i9.GraphqlClient>()));
    gh.lazySingleton<_i12.AuthenticationRepository>(
        () => _i12.AuthenticationRepository(
              tokenManager: gh<_i6.TokenManager>(),
              userApiService: gh<_i11.UserApiService>(),
            ));
    gh.lazySingleton<_i13.HomeRepositiory>(
        () => _i13.HomeRepositiory(homeApiService: gh<_i10.HomeApiService>()));
    gh.factory<_i14.AuthBloc>(
        () => _i14.AuthBloc(gh<_i12.AuthenticationRepository>()));
    gh.factory<_i15.HomeBloc>(() => _i15.HomeBloc(gh<_i13.HomeRepositiory>()));
    return this;
  }
}
