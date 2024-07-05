import 'package:auhentication_gql/common/injection/injection.dart';
import 'package:auhentication_gql/features/authentication/data/data_source/local/database_service.dart';
import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GraphqlUserClient {
  late Client client;

  Future<void> initializeGraphqlClient({
    required String url,
    bool hasToken = false,
  }) async {
    // Retrieve the access token if needed
    final String? accessToken =
        hasToken ? await getIt<DatabaseService>().getToken() : null;

    // Set up the HTTP link with the appropriate headers
    final HttpLink link = HttpLink(
      url,
      defaultHeaders: {
        if (accessToken != null) 'Authorization': 'Bearer $accessToken',
      },
    );

    // Initialize the client
    client = Client(
      link: link,
    );
  }
}
