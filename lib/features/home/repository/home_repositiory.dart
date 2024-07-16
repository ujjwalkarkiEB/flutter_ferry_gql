import 'package:auhentication_gql/core/error/exception/exception.dart';
import 'package:auhentication_gql/core/error/failure/failure.dart';
import 'package:auhentication_gql/features/home/services/home_api_service.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

import '../../../common/model/user.dart';

@lazySingleton
class HomeRepositiory {
  HomeRepositiory({required HomeApiService homeApiService})
      : _homeApiService = homeApiService;

  final HomeApiService _homeApiService;
  Future<Either<Failure, User>> getCurrentUserData() async {
    try {
      final User user = await _homeApiService.getSignedUserData();
      return right(user);
    } on ServerException catch (e) {
      return left(ServerFailure(e.message!));
    } catch (e) {
      return left(UnknownFailure('Something went wrong!'));
    }
  }
}
