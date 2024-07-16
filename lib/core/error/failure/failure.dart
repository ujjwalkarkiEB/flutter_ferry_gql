import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  Failure(this.failureMsg);
  final String failureMsg;
  List<Object?> get props => <Object?>[failureMsg];
}

class ServerFailure extends Failure {
  ServerFailure(super.failureMsg);
}

class DatabaseFailure extends Failure {
  DatabaseFailure(super.failureMsg);
}

class UnknownFailure extends Failure {
  UnknownFailure(super.failureMsg);
}
