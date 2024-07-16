part of 'auth_bloc.dart';

sealed class AuthEvent {}

final class AuthSignUpButtonPressed extends AuthEvent {
  AuthSignUpButtonPressed({
    required this.email,
    required this.password,
  });
  final String email;
  final String password;
}

final class AuthSignInButtonPressed extends AuthEvent {
  AuthSignInButtonPressed({required this.email, required this.password});
  final String email;
  final String password;
}

final class AuthLogoutRequested extends AuthEvent {}

final class AuthCheckStatusRequested extends AuthEvent {}
