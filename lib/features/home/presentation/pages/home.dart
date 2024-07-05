import 'dart:io';

import 'package:auhentication_gql/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:auhentication_gql/features/authentication/presentation/screens/authentication.dart';
import 'package:auhentication_gql/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthLogout) {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (_) => AuthenticationScreen(),
              ),
              (router) => false);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Screen'),
          actions: [
            IconButton(
                onPressed: () {
                  context.read<AuthBloc>().add(AuthLogoutRequested());
                },
                icon: Icon(Icons.exit_to_app))
          ],
        ),
        body: BlocConsumer<HomeBloc, HomeState>(
          listenWhen: (previous, current) =>
              previous.runtimeType != current.runtimeType,
          listener: (context, state) {},
          builder: (context, state) {
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
                    children: [
                      Text('UserdID : ${state.userId}'),
                      Text('EMAIL : ${state.email}'),
                    ],
                  ),
                ),
              );
            }

            if (state is HomeDataLoadingError) {
              Center(
                child: Text('Failed to load data'),
              );
            }
            return Center(
              child: Text('Something went wrong!'),
            );
          },
        ),
      ),
    );
  }
}
