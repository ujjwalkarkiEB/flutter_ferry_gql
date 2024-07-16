import 'package:auhentication_gql/core/error/failure/failure.dart';
import 'package:auhentication_gql/features/authentication/data/repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authenticationRepository) : super(AuthInitial()) {
    on<AuthSignUpButtonPressed>(_onSignupPressed);
    on<AuthSignInButtonPressed>(_onSignInPressed);
    on<AuthLogoutRequested>(_logoutEventOcurred);
  }
  final AuthenticationRepository _authenticationRepository;

  void _logoutEventOcurred(
      AuthLogoutRequested event, Emitter<AuthState> emit) async {
    await _authenticationRepository.logoutUser();
    emit(AuthLogout());
  }

  void _onSignupPressed(
      AuthSignUpButtonPressed event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      await _authenticationRepository.signUpUser(
          email: event.email, password: event.password);
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthError(errorMsg: e.toString()));
    }
  }

  void _onSignInPressed(
      AuthSignInButtonPressed event, Emitter<AuthState> emit) async {
    emit(AuthLoading());

    final Either<Failure, void> resp = await _authenticationRepository
        .signInUser(email: event.email, password: event.password);

    resp.fold(
      (Failure l) => emit(AuthError(errorMsg: l.failureMsg)),
      (void r) {
        emit(AuthSuccess());
      },
    );
  }
}
