part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class HomeDataFetchRequest extends HomeEvent {}
