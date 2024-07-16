// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i6;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_loggedIn_user.ast.gql.dart'
    as _i5;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_loggedIn_user.data.gql.dart'
    as _i2;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_loggedIn_user.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'get_loggedIn_user.req.gql.g.dart';

abstract class GGetLoggedInUserReq
    implements
        Built<GGetLoggedInUserReq, GGetLoggedInUserReqBuilder>,
        _i1
        .OperationRequest<_i2.GGetLoggedInUserData, _i3.GGetLoggedInUserVars> {
  GGetLoggedInUserReq._();

  factory GGetLoggedInUserReq(
          [void Function(GGetLoggedInUserReqBuilder b) updates]) =
      _$GGetLoggedInUserReq;

  static void _initializeBuilder(GGetLoggedInUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetLoggedInUser',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetLoggedInUserVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GGetLoggedInUserData? Function(
    _i2.GGetLoggedInUserData?,
    _i2.GGetLoggedInUserData?,
  )? get updateResult;
  @override
  _i2.GGetLoggedInUserData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GGetLoggedInUserData? parseData(Map<String, dynamic> json) =>
      _i2.GGetLoggedInUserData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetLoggedInUserData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetLoggedInUserData, _i3.GGetLoggedInUserVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetLoggedInUserReq> get serializer =>
      _$gGetLoggedInUserReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetLoggedInUserReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetLoggedInUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetLoggedInUserReq.serializer,
        json,
      );
}
