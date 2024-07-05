import 'package:auhentication_gql/common/injection/injection.dart';
import 'package:auhentication_gql/core/utils/helpers/token_manager.dart';
import 'package:auhentication_gql/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:auhentication_gql/features/authentication/presentation/screens/authentication.dart';
import 'package:auhentication_gql/features/home/presentation/bloc/home_bloc.dart';
import 'package:auhentication_gql/features/home/presentation/pages/home.dart';
import 'package:auhentication_gql/graphql/graphql_client.dart';
import 'package:auhentication_gql/core/utils/constants/stribg_constants.dart';
import 'package:auhentication_gql/features/authentication/data/data_source/local/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // register dependencies firstly
  configureDependencies();
  // initialize local hive authentication database
  await getIt<DatabaseHelper>().initializeLocalDatabase();

  // check if user is previously logged in
  final hasToken = await getIt<TokenManager>().doesAccessTokenExist();
  if (hasToken) {
    await getIt<GraphqlUserClient>()
        .initializeGraphqlClient(url: StringConstants.baseUrl, hasToken: true);
  } else {
    await getIt<GraphqlUserClient>()
        .initializeGraphqlClient(url: StringConstants.baseUrl);
  }

  runApp(MyApp(hasToken: hasToken));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.hasToken});
  final bool hasToken;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<HomeBloc>()..add(HomeDataFetchRequest()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: hasToken ? HomeScreen() : AuthenticationScreen(),
      ),
    );
  }
}
