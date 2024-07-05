// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:auhentication_gql/graphql/gql_g_files/schema.schema.gql.dart'
    show GAuthInput;
import 'package:auhentication_gql/graphql/mutation/gql_g_files/sign_in.data.gql.dart'
    show GSignInUserData, GSignInUserData_signIn;
import 'package:auhentication_gql/graphql/mutation/gql_g_files/sign_in.req.gql.dart'
    show GSignInUserReq;
import 'package:auhentication_gql/graphql/mutation/gql_g_files/sign_in.var.gql.dart'
    show GSignInUserVars;
import 'package:auhentication_gql/graphql/mutation/gql_g_files/sign_up.data.gql.dart'
    show GSignUpUserData, GSignUpUserData_signUp;
import 'package:auhentication_gql/graphql/mutation/gql_g_files/sign_up.req.gql.dart'
    show GSignUpUserReq;
import 'package:auhentication_gql/graphql/mutation/gql_g_files/sign_up.var.gql.dart'
    show GSignUpUserVars;
import 'package:auhentication_gql/graphql/query/gql_g_files/current_user.data.gql.dart'
    show
        GGetCurrentAuthenticatedUserDetailsData,
        GGetCurrentAuthenticatedUserDetailsData_currentUser;
import 'package:auhentication_gql/graphql/query/gql_g_files/current_user.req.gql.dart'
    show GGetCurrentAuthenticatedUserDetailsReq;
import 'package:auhentication_gql/graphql/query/gql_g_files/current_user.var.gql.dart'
    show GGetCurrentAuthenticatedUserDetailsVars;
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
  GAuthInput,
  GGetCurrentAuthenticatedUserDetailsData,
  GGetCurrentAuthenticatedUserDetailsData_currentUser,
  GGetCurrentAuthenticatedUserDetailsReq,
  GGetCurrentAuthenticatedUserDetailsVars,
  GSignInUserData,
  GSignInUserData_signIn,
  GSignInUserReq,
  GSignInUserVars,
  GSignUpUserData,
  GSignUpUserData_signUp,
  GSignUpUserReq,
  GSignUpUserVars,
])
final Serializers serializers = _serializersBuilder.build();
