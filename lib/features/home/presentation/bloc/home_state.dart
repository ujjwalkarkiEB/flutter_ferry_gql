part of 'home_bloc.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeDataFetching extends HomeState {}

final class HomeDataLoaded extends HomeState {
  final String userId;
  final String email;

  HomeDataLoaded({required this.userId, required this.email});
}

final class HomeDataLoadingError extends HomeState {}
