import 'dart:developer';

import 'package:auhentication_gql/common/logger/logger.dart';
import 'package:auhentication_gql/common/model/user.dart';
import 'package:auhentication_gql/core/error/exception/exception.dart';
import 'package:auhentication_gql/graphql/mutation/post/gql_g_files/create_post.data.gql.dart';
import 'package:auhentication_gql/graphql/mutation/post/gql_g_files/create_post.req.gql.dart';
import 'package:auhentication_gql/graphql/mutation/post/gql_g_files/create_post.var.gql.dart';
import 'package:auhentication_gql/graphql/query/gql_g_files/get_loggedIn_user.data.gql.dart';
import 'package:auhentication_gql/graphql/query/gql_g_files/get_loggedIn_user.var.gql.dart';
import 'package:auhentication_gql/graphql/query/gql_g_files/get_post_detail.data.gql.dart';
import 'package:auhentication_gql/graphql/query/gql_g_files/get_post_detail.var.gql.dart';
import 'package:auhentication_gql/graphql/query/gql_g_files/get_posts.data.gql.dart';
import 'package:auhentication_gql/graphql/query/gql_g_files/get_posts.req.gql.dart';
import 'package:auhentication_gql/graphql/query/gql_g_files/get_posts.var.gql.dart';
import 'package:built_collection/src/list.dart';
import 'package:ferry_exec/src/operation_response.dart';
import 'package:injectable/injectable.dart';

import '../../../core/network/client/graphql_client.dart';
import '../../../graphql/query/gql_g_files/get_loggedIn_user.req.gql.dart';
import '../../../graphql/query/gql_g_files/get_post_detail.req.gql.dart';
import '../model/post.dart';

@lazySingleton
class HomeApiService {
  HomeApiService(this._graphqlClient);

  final GraphqlClient _graphqlClient;

  Future<User> getSignedUserData() async {
    try {
      String? errorMsg;

      final GGetLoggedInUserReq currentUserGetDataReq = GGetLoggedInUserReq();

      final OperationResponse<GGetLoggedInUserData, GGetLoggedInUserVars>
          response =
          await _graphqlClient.client.request(currentUserGetDataReq).first;

      if (!response.hasErrors) {
        final GGetLoggedInUserData_getLoggedInUser? userData =
            response.data!.getLoggedInUser;
        final User user = User(
            id: userData!.G_id!,
            email: userData.email!,
            username: userData.userName!);
        return user;
      } else {
        errorMsg = response.graphqlErrors!.first.message;
        throw ServerException(errorMsg);
      }
    } catch (e) {
      logger.e('Failed to get user data: ${e.toString()}');
      throw Exception('Something went wrong');
    }
  }

  Future<List<BasicPost>> getAllPosts() async {
    try {
      final List<BasicPost> posts;
      final GGetUserPostsListReq postListsDataReq = GGetUserPostsListReq();

      final OperationResponse<GGetUserPostsListData, GGetUserPostsListVars>
          response =
          await _graphqlClient.client.request(postListsDataReq).first;

      if (!response.hasErrors) {
        final BuiltList<GGetUserPostsListData_listUserPosts?>? postsResponse =
            response.data!.listUserPosts;
        posts = postsResponse!
            .map((GGetUserPostsListData_listUserPosts? data) => BasicPost(
                id: data!.G_id!, image: data.image!, title: data.title!))
            .toList();
        return posts;
      } else {
        throw ServerException('Failed to get posts list');
      }
    } catch (e) {
      log('SignIn Api service Error: ${e.toString()}');
      throw UnknownErrorException();
    }
  }

  Future<Post> getPostById(String id) async {
    try {
      final GGetPostByIdReq req =
          GGetPostByIdReq((GGetPostByIdReqBuilder b) => b..vars.id = id);
      final OperationResponse<GGetPostByIdData, GGetPostByIdVars> response =
          await _graphqlClient.client.request(req).first;

      if (response.hasErrors) {
        throw Exception('GraphQL Error: ${response.graphqlErrors}');
      }

      final GGetPostByIdData_getPostById? data = response.data!.getPostById;
      return Post(
          id: id,
          description: data!.description!,
          commentCount: data.commentCount!,
          likeCount: data.likeCount!,
          createdAt: DateTime.parse(data.createdAt!),
          updatedAt: DateTime.parse(data.updatedAt!),
          author: User(
            username: data.user!.userName!,
            id: data.user!.G_id!,
          ));
    } catch (e) {
      throw Exception('Failed to fetch post details: ${e.toString()}');
    }
  }

  Future<String> createPost(String title, String description) async {
    try {
      final GcreatePostReq req = GcreatePostReq((GcreatePostReqBuilder b) => b
        ..vars.input.title = title
        ..vars.input.description = description);

      final OperationResponse<GcreatePostData, GcreatePostVars> response =
          await _graphqlClient.client.request(req).first;

      if (response.hasErrors) {
        throw Exception('GraphQL Error: ${response.graphqlErrors}');
      }

      final String createdPostId = response.data!.createPost!.G_id;
      return createdPostId;
    } catch (e) {
      throw Exception('Failed to create post: ${e.toString()}');
    }
  }
}
