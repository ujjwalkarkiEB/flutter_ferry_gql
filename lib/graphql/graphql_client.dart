import 'package:auhentication_gql/common/injection/injection.dart';
import 'package:auhentication_gql/core/utils/helpers/token_manager.dart';
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
        hasToken ? await getIt<TokenManager>().getAccessToken() : null;

    // Set up the HTTP link with the appropriate headers
    final HttpLink link = HttpLink(
      url,
      defaultHeaders: <String, String>{
        if (accessToken != null) 'Authorization': 'Bearer $accessToken',
      },
    );

    // Initialize the client
    client = Client(
      link: link,
    );
  }
}
