import 'package:auhentication_gql/common/injection/injection.dart';
import 'package:auhentication_gql/core/utils/helpers/token_manager.dart';
import 'package:auhentication_gql/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:auhentication_gql/features/authentication/presentation/screens/authentication.dart';
import 'package:auhentication_gql/features/home/presentation/bloc/home_bloc.dart';
import 'package:auhentication_gql/features/home/presentation/pages/home.dart';
import 'package:auhentication_gql/features/authentication/data/data_source/local/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // register dependencies firstly
  configureDependencies();
  // initialize local hive authentication database
  await getIt<DatabaseHelper>().initializeLocalDatabase();

  // check if user is previously logged in
  final bool hasToken = await getIt<TokenManager>().doesAccessTokenExist();

  runApp(MyApp(hasToken: hasToken));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.hasToken, super.key});
  final bool hasToken;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <SingleChildWidget>[
        BlocProvider<AuthBloc>(
          create: (BuildContext context) => getIt<AuthBloc>(),
        ),
        BlocProvider<HomeBloc>(
          create: (BuildContext context) =>
              // getIt<HomeBloc>()..add(HomeDataFetchRequest()),
              getIt<HomeBloc>(),
        ),
      ],
      child: MaterialApp(
        // navigatorKey: navigatorKey,
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: hasToken ? const HomeScreen() : const AuthenticationScreen(),
      ),
    );
  }
}
