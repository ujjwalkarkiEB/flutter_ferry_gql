import 'package:auhentication_gql/core/utils/resources/data_state.dart';
import 'package:auhentication_gql/features/home/data/repository/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final UserRepository _userRepository;
  HomeBloc(this._userRepository) : super(HomeInitial()) {
    on<HomeDataFetchRequest>((event, emit) async {
      emit(HomeDataFetching());

      final data = await _userRepository.getUserData();
      if (data is DataSucces) {
        final userData = data.data!;
        emit(HomeDataLoaded(userId: userData.id!, email: userData.email!));
      } else {
        emit(HomeDataLoadingError());
      }
    });
  }
}
