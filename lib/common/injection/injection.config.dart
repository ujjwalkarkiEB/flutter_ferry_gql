// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/authentication/data/data_source/local/database_helper.dart'
    as _i3;
import '../../features/authentication/data/data_source/local/database_service.dart'
    as _i5;
import '../../features/authentication/data/data_source/remote/user_api_service.dart'
    as _i7;
import '../../features/authentication/data/repository/authentication_repository.dart'
    as _i9;
import '../../features/authentication/presentation/bloc/auth_bloc.dart' as _i11;
import '../../features/home/data/data_source/remote/home_api_service.dart'
    as _i6;
import '../../features/home/data/repository/user_repository.dart' as _i8;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i10;
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
    gh.lazySingleton<_i6.HomeApiService>(() =>
        _i6.HomeApiService(graphqlUserClient: gh<_i4.GraphqlUserClient>()));
    gh.lazySingleton<_i7.UserApiService>(
        () => _i7.UserApiService(gqlClient: gh<_i4.GraphqlUserClient>()));
    gh.lazySingleton<_i8.UserRepository>(
        () => _i8.UserRepository(homeApiService: gh<_i6.HomeApiService>()));
    gh.lazySingleton<_i9.AuthenticationRepository>(
        () => _i9.AuthenticationRepository(
              databaseService: gh<_i5.DatabaseService>(),
              userApiService: gh<_i7.UserApiService>(),
            ));
    gh.factory<_i10.HomeBloc>(() => _i10.HomeBloc(gh<_i8.UserRepository>()));
    gh.factory<_i11.AuthBloc>(
        () => _i11.AuthBloc(gh<_i9.AuthenticationRepository>()));
    return this;
  }
}
