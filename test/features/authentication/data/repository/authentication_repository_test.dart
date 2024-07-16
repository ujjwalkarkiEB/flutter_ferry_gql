import 'dart:ffi';

import 'package:auhentication_gql/core/error/failure/failure.dart';
import 'package:auhentication_gql/features/authentication/data/repository/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:auhentication_gql/core/error/exception/exception.dart';

import '../../../../helpers/test_helper.mocks.dart';

void main() {
  late MockTokenManager mockTokenManager;
  late MockUserApiService mockUserApiService;
  late AuthenticationRepository authenticationRepository;

  setUp(() {
    mockTokenManager = MockTokenManager();
    mockUserApiService = MockUserApiService();

    authenticationRepository = AuthenticationRepository(
        tokenManager: mockTokenManager, userApiService: mockUserApiService);
  });

  const String mockEmail = 'u@gmail.com';
  const String mockPsw = 'uuuuuu';
  const String failureMsg = 'Provided Credentials donot match!';

  // ------------------------ Login Test Cases ---------------------------------
  group(
    'Login Test: \n',
    () {
      test('Should return right(null) on successful login', () async {
        final String encodedTokens =
            '{"accessToken": "access", "refreshToken": "refresh"}';
        // arrange
        when(mockUserApiService.signInUser(email: mockEmail, password: mockPsw))
            .thenAnswer((_) async => encodedTokens);
        when(mockTokenManager.storeToken(
                accessToken: anyNamed('accessToken'),
                refreshToken: anyNamed('refreshToken')))
            .thenAnswer((_) async => Void);

        // act
        final Either<Failure, void> result = await authenticationRepository
            .signInUser(email: mockEmail, password: mockPsw);
        // assert
        expect(result, right(null));
        //verify the calls
        verify(mockTokenManager.storeToken(
                accessToken: anyNamed('accessToken'),
                refreshToken: anyNamed('refreshToken')))
            .called(1);
      });
      test(
          'Should return server failure with error msg when login attempt is unsuccessful',
          () async {
        // arrange
        when(mockUserApiService.signInUser(email: mockEmail, password: mockPsw))
            .thenThrow(ServerException(failureMsg));
        // act
        final Either<Failure, void> response = await authenticationRepository
            .signInUser(email: mockEmail, password: mockPsw);
        // assert
        expect(response, left(ServerFailure(failureMsg)));

        // verify the calls
        verify(mockUserApiService.signInUser(
                email: mockEmail, password: mockPsw))
            .called(1);

        verifyNever(mockTokenManager.storeToken(
            accessToken: anyNamed('accessToken'),
            refreshToken: anyNamed('refreshToken')));
      });

      test(
          'Should return unkownfailure for any other exception than server exception',
          () async {
        // arrange
        final String encodedTokens =
            '{"accessToken": "access", "refreshToken": "refresh"}';

        when(mockUserApiService.signInUser(email: mockEmail, password: mockPsw))
            .thenAnswer((_) async => encodedTokens);
        when(mockTokenManager.storeToken(
                accessToken: anyNamed('accessToken'),
                refreshToken: anyNamed('refreshToken')))
            .thenThrow(DatabaseException());

        // act
        final Either<Failure, void> result = await authenticationRepository
            .signInUser(email: mockEmail, password: mockPsw);

        // assert
        expect(result, left(UnknownFailure('An unexpected error occurred')));
      });
    },
  );

  // ------------------------ LogOut Test Cases ---------------------------------
  group('\n SignUp Test: \n', () {
    test('Should call signupuser on apiservice when there is a sigup attempt',
        () async {
      // arrange
      when(mockUserApiService.signUpUser(email: mockEmail, password: mockPsw))
          .thenAnswer((_) async => Void);
      // act
      await authenticationRepository.signUpUser(
          email: mockEmail, password: mockPsw);

      // verify the calls
      verify(mockUserApiService.signUpUser(email: mockEmail, password: mockPsw))
          .called(1);
    });
  });
}
