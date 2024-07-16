import 'package:auhentication_gql/common/model/user.dart';
import 'package:auhentication_gql/core/error/failure/failure.dart';
import 'package:auhentication_gql/features/home/repository/home_repositiory.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._homeRepositiory) : super(HomeInitial()) {
    on<HomeDataFetchRequest>(
        (HomeDataFetchRequest event, Emitter<HomeState> emit) async {
      emit(HomeDataFetching());

      final Either<Failure, User> data =
          await _homeRepositiory.getCurrentUserData();

      data.fold(
        (Failure l) {
          emit(HomeDataLoadingError());
        },
        (User r) {
          emit(HomeDataLoaded(userId: r.id, email: r.email!));
        },
      );
    });
  }
  final HomeRepositiory _homeRepositiory;
}
