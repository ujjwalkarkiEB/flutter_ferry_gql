import 'package:auhentication_gql/core/utils/resources/data_state.dart';
import 'package:auhentication_gql/features/authentication/data/repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

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

    final data = await _authenticationRepository.signInUser(
        email: event.email, password: event.password);

    if (data is DataError) {
      emit(AuthError(errorMsg: data.error!));
      return;
    }
    emit(AuthSuccess());
  }

  @override
  void onTransition(Transition<AuthEvent, AuthState> transition) {
    super.onTransition(transition);
    print(transition);
  }
}
