import 'dart:io';

import 'package:auhentication_gql/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:auhentication_gql/features/authentication/presentation/screens/authentication.dart';
import 'package:auhentication_gql/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(HomeDataFetchRequest());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, AuthState state) {
        if (state is AuthLogout) {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute<dynamic>(
                builder: (_) => const AuthenticationScreen(),
              ),
              (Route<dynamic> router) => false);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                context.read<AuthBloc>().add(AuthLogoutRequested());
              },
              icon: const Icon(Icons.exit_to_app),
            )
          ],
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (BuildContext context, HomeState state) {
            if (state is HomeDataFetching) {
              return Center(
                child: Platform.isAndroid
                    ? const CircularProgressIndicator()
                    : const CupertinoActivityIndicator(),
              );
            }

            if (state is HomeDataLoaded) {
              return Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('UserdID : ${state.userId}'),
                      Text('EMAIL : ${state.email}'),
                    ],
                  ),
                ),
              );
            }

            if (state is HomeDataLoadingError) {
              return Center(
                child: AlertDialog(
                  backgroundColor: Colors.pink.shade100,
                  content: const Text('Retry Login'),
                  title: const Text('Failed to load data!'),
                  actions: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(AuthLogoutRequested());
                        Navigator.of(context).pop();
                      },
                      child: const Text('Logout'),
                    )
                  ],
                ),
              );
            }
            return const Center(
              child: Text('Something went wrong!'),
            );
          },
        ),
      ),
    );
  }
}
