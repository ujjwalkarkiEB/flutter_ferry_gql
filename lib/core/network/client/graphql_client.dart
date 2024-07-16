import 'package:ferry/ferry.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:injectable/injectable.dart';
import 'package:auhentication_gql/core/network/client/dio_client.dart';
import 'package:auhentication_gql/core/utils/constants/string_constants.dart';

@lazySingleton
class GraphqlClient {
  GraphqlClient({required DioClient dioClient})
      : client = Client(
            link: DioLink(StringConstants.baseUrl, client: dioClient.dio));

  final Client client;

  Client get gqlClient => client;
}
