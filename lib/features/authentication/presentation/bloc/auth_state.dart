part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  @override
  List<Object?> get props => <Object?>[];
}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthError extends AuthState {
  AuthError({required this.errorMsg});
  final String errorMsg;
}

final class AuthSuccess extends AuthState {}

final class AuthLogout extends AuthState {}
