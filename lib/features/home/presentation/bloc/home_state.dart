part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  @override
  List<Object?> get props => <Object?>[];
}

final class HomeInitial extends HomeState {}

final class HomeDataFetching extends HomeState {}

final class HomeDataLoaded extends HomeState {
  HomeDataLoaded({required this.userId, required this.email});
  final String userId;
  final String email;
}

final class HomeDataLoadingError extends HomeState {}
