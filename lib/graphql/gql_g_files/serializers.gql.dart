// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:auhentication_gql/graphql/gql_g_files/schema.schema.gql.dart'
    show GLoginInput, GSingUpInput, GUserPostContent;
import 'package:auhentication_gql/graphql/mutation/authentication/gql_g_files/get_refresh_toke.data.gql.dart'
    show GRefreshTokenData;
import 'package:auhentication_gql/graphql/mutation/authentication/gql_g_files/get_refresh_toke.req.gql.dart'
    show GRefreshTokenReq;
import 'package:auhentication_gql/graphql/mutation/authentication/gql_g_files/get_refresh_toke.var.gql.dart'
    show GRefreshTokenVars;
import 'package:auhentication_gql/graphql/mutation/authentication/gql_g_files/sign_in.data.gql.dart'
    show GLoginData, GLoginData_login, GLoginData_login_data;
import 'package:auhentication_gql/graphql/mutation/authentication/gql_g_files/sign_in.req.gql.dart'
    show GLoginReq;
import 'package:auhentication_gql/graphql/mutation/authentication/gql_g_files/sign_in.var.gql.dart'
    show GLoginVars;
import 'package:auhentication_gql/graphql/mutation/authentication/gql_g_files/sign_up.data.gql.dart'
    show GSignUpUserData, GSignUpUserData_register;
import 'package:auhentication_gql/graphql/mutation/authentication/gql_g_files/sign_up.req.gql.dart'
    show GSignUpUserReq;
import 'package:auhentication_gql/graphql/mutation/authentication/gql_g_files/sign_up.var.gql.dart'
    show GSignUpUserVars;
import 'package:auhentication_gql/graphql/mutation/post/gql_g_files/create_post.data.gql.dart'
    show GcreatePostData, GcreatePostData_createPost;
import 'package:auhentication_gql/graphql/mutation/post/gql_g_files/create_post.req.gql.dart'
    show GcreatePostReq;
import 'package:auhentication_gql/graphql/mutation/post/gql_g_files/create_post.var.gql.dart'
    show GcreatePostVars;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_loggedIn_user.data.gql.dart'
    show GGetLoggedInUserData, GGetLoggedInUserData_getLoggedInUser;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_loggedIn_user.req.gql.dart'
    show GGetLoggedInUserReq;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_loggedIn_user.var.gql.dart'
    show GGetLoggedInUserVars;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_post_detail.data.gql.dart'
    show
        GGetPostByIdData,
        GGetPostByIdData_getPostById,
        GGetPostByIdData_getPostById_user;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_post_detail.req.gql.dart'
    show GGetPostByIdReq;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_post_detail.var.gql.dart'
    show GGetPostByIdVars;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_posts.data.gql.dart'
    show GGetUserPostsListData, GGetUserPostsListData_listUserPosts;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_posts.req.gql.dart'
    show GGetUserPostsListReq;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_posts.var.gql.dart'
    show GGetUserPostsListVars;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_signed_user.data.gql.dart'
    show GGetLoggedInUserDataData, GGetLoggedInUserDataData_getLoggedInUser;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_signed_user.req.gql.dart'
    show GGetLoggedInUserDataReq;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_signed_user.var.gql.dart'
    show GGetLoggedInUserDataVars;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GGetLoggedInUserData,
  GGetLoggedInUserDataData,
  GGetLoggedInUserDataData_getLoggedInUser,
  GGetLoggedInUserDataReq,
  GGetLoggedInUserDataVars,
  GGetLoggedInUserData_getLoggedInUser,
  GGetLoggedInUserReq,
  GGetLoggedInUserVars,
  GGetPostByIdData,
  GGetPostByIdData_getPostById,
  GGetPostByIdData_getPostById_user,
  GGetPostByIdReq,
  GGetPostByIdVars,
  GGetUserPostsListData,
  GGetUserPostsListData_listUserPosts,
  GGetUserPostsListReq,
  GGetUserPostsListVars,
  GLoginData,
  GLoginData_login,
  GLoginData_login_data,
  GLoginInput,
  GLoginReq,
  GLoginVars,
  GRefreshTokenData,
  GRefreshTokenReq,
  GRefreshTokenVars,
  GSignUpUserData,
  GSignUpUserData_register,
  GSignUpUserReq,
  GSignUpUserVars,
  GSingUpInput,
  GUserPostContent,
  GcreatePostData,
  GcreatePostData_createPost,
  GcreatePostReq,
  GcreatePostVars,
])
final Serializers serializers = _serializersBuilder.build();
