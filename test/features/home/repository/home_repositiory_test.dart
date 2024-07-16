import 'package:auhentication_gql/common/model/user.dart';
import 'package:auhentication_gql/core/error/exception/exception.dart';
import 'package:auhentication_gql/core/error/failure/failure.dart';
import 'package:auhentication_gql/features/home/repository/home_repositiory.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/test_helper.mocks.dart';

void main() {
  late MockHomeApiService mockHomeApiService;
  late HomeRepositiory homeRepositiory;

  setUp(() {
    mockHomeApiService = MockHomeApiService();
    homeRepositiory = HomeRepositiory(homeApiService: mockHomeApiService);
  });
  final User testUserModel =
      User(username: 'testuser123', id: 'u123', email: 'test@example.com');

  test('Should return USER model on successful getCurrentUserData call',
      () async {
    when(mockHomeApiService.getSignedUserData())
        .thenAnswer((_) async => testUserModel);

    final Either<Failure, User> result =
        await homeRepositiory.getCurrentUserData();
    expect(result, right(testUserModel));
  });

  test('returns ServerFailure when getSignedUserData throws ServerException',
      () async {
    when(mockHomeApiService.getSignedUserData())
        .thenThrow(ServerException('Server error'));

    final Either<Failure, User> result =
        await homeRepositiory.getCurrentUserData();

    expect(result, left(ServerFailure('Server error')));
  });

  test('returns UnknownFailure for any other exceptions', () async {
    when(mockHomeApiService.getSignedUserData())
        .thenThrow(Exception('Unexpected error'));
    final Either<Failure, User> result =
        await homeRepositiory.getCurrentUserData();
    expect(result, left(UnknownFailure('Something went wrong!')));
  });
}
