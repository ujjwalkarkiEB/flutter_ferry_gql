import 'package:auhentication_gql/common/model/user.dart';
import 'package:auhentication_gql/core/error/failure/failure.dart';
import 'package:auhentication_gql/features/home/presentation/bloc/home_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../helpers/test_helper.mocks.dart';

void main() {
  late MockHomeRepositiory mockHomeRepositiory;
  late HomeBloc homeBloc;

  setUp(() {
    mockHomeRepositiory = MockHomeRepositiory();
    homeBloc = HomeBloc(mockHomeRepositiory);
  });
  final User testUserModel =
      User(username: 'testuser123', id: 'u123', email: 'test@example.com');
  blocTest<HomeBloc, HomeState>(
      'should emit [HomeDataFetching , HomeDataLoaded] state when getCurrentUserData returns user model ',
      build: () {
        when(mockHomeRepositiory.getCurrentUserData())
            .thenAnswer((_) async => right(testUserModel));
        return homeBloc;
      },
      act: (HomeBloc bloc) => bloc.add(HomeDataFetchRequest()),
      expect: () => <HomeState>[
            HomeDataFetching(),
            HomeDataLoaded(
                userId: testUserModel.id, email: testUserModel.email!)
          ]);

  blocTest<HomeBloc, HomeState>(
    'Should emit [HomeDataFetching, HomeDataLoadingError] when fetching data fails with exceptions',
    build: () {
      when(mockHomeRepositiory.getCurrentUserData())
          .thenAnswer((_) async => left(ServerFailure('Server error')));
      return homeBloc;
    },
    act: (HomeBloc bloc) => bloc.add(HomeDataFetchRequest()),
    expect: () => <HomeState>[HomeDataFetching(), HomeDataLoadingError()],
  );
}
