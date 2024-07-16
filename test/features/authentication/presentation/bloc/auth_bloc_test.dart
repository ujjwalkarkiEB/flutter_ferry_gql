import 'package:auhentication_gql/core/error/exception/exception.dart';
import 'package:auhentication_gql/core/error/failure/failure.dart';
import 'package:auhentication_gql/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../helpers/test_helper.mocks.dart';

void main() {
  late MockAuthenticationRepository mockAuthenticationRepository;
  late AuthBloc authBloc;

  setUp(() {
    mockAuthenticationRepository = MockAuthenticationRepository();
    authBloc = AuthBloc(mockAuthenticationRepository);
  });

  test('Initial state should be AuthInitial', () {
    expect(authBloc.state, AuthInitial());
  });

  const String testEmail = 'test@example.com';
  const String testPsw = 'password';
  const String testFailureMsg = 'Provided credentials do not match!';
  const String testSignupFailMsg = 'User with the given email exists already!';
  const String testSignUpUnknownErrorMsg = 'Unknown error occured!';

  group('SIGNIN TESTCASES: \n', () {
    blocTest<AuthBloc, AuthState>(
      'Should emit [AuthLoading ,AuthSuccess] state on successful login!',
      build: () {
        when(mockAuthenticationRepository.signInUser(
                email: testEmail, password: testPsw))
            .thenAnswer(
          (_) async => right(null),
        );

        return authBloc;
      },
      act: (AuthBloc bloc) => bloc
          .add(AuthSignInButtonPressed(email: testEmail, password: testPsw)),
      expect: () => <AuthState>[AuthLoading(), AuthSuccess()],
    );

    blocTest<AuthBloc, AuthState>(
      'Should emit [AuthLoading ,AuthError] state on unsuccessful login attempt with propagated error msg from server!',
      build: () {
        when(mockAuthenticationRepository.signInUser(
                email: testEmail, password: testPsw))
            .thenAnswer(
          (_) async => left(ServerFailure(testFailureMsg)),
        );

        return authBloc;
      },
      act: (AuthBloc bloc) => bloc
          .add(AuthSignInButtonPressed(email: testEmail, password: testPsw)),
      expect: () =>
          <AuthState>[AuthLoading(), AuthError(errorMsg: testFailureMsg)],
    );
  });

  group('SIGNUP TESTCASES: \n', () {
    blocTest<AuthBloc, AuthState>(
      'Should emit [AuthLoading ,AuthSuccess] state on successful registration!',
      build: () {
        when(mockAuthenticationRepository.signUpUser(
                email: testEmail, password: testPsw))
            .thenAnswer(
          (_) async {},
        );

        return authBloc;
      },
      act: (AuthBloc bloc) => bloc
          .add(AuthSignInButtonPressed(email: testEmail, password: testPsw)),
      expect: () => <AuthState>[AuthLoading(), AuthSuccess()],
    );

    blocTest<AuthBloc, AuthState>(
      'Should emit [AuthLoading ,AuthError] state on unsuccessful signup attempt with propagated server exception message for ServerException!',
      build: () {
        when(mockAuthenticationRepository.signUpUser(
                email: testEmail, password: testPsw))
            .thenThrow(
          (_) async => ServerException(testSignupFailMsg),
        );

        return authBloc;
      },
      act: (AuthBloc bloc) => bloc
          .add(AuthSignUpButtonPressed(email: testEmail, password: testPsw)),
      expect: () =>
          <AuthState>[AuthLoading(), AuthError(errorMsg: testSignupFailMsg)],
    );

    blocTest<AuthBloc, AuthState>(
      'Should emit [AuthLoading ,AuthError] state on unsuccessful signup attempt with propagated server exception message for other than serverException!',
      build: () {
        when(mockAuthenticationRepository.signUpUser(
                email: testEmail, password: testPsw))
            .thenThrow(
          (_) async => testSignUpUnknownErrorMsg,
        );

        return authBloc;
      },
      act: (AuthBloc bloc) => bloc
          .add(AuthSignUpButtonPressed(email: testEmail, password: testPsw)),
      expect: () => <AuthState>[
        AuthLoading(),
        AuthError(errorMsg: testSignUpUnknownErrorMsg)
      ],
    );
  });

  blocTest<AuthBloc, AuthState>(
    'Should emit [AuthLogout] on successful logout request',
    build: () {
      when(mockAuthenticationRepository.signUpUser(
              email: testEmail, password: testPsw))
          .thenAnswer(
        (_) async {},
      );
      return authBloc;
    },
  );
}
