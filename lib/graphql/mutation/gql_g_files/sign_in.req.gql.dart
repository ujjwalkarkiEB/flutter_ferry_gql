// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i6;
import 'package:auhentication_gql/graphql/mutation/gql_g_files/sign_in.ast.gql.dart'
    as _i5;
import 'package:auhentication_gql/graphql/mutation/gql_g_files/sign_in.data.gql.dart'
    as _i2;
import 'package:auhentication_gql/graphql/mutation/gql_g_files/sign_in.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'sign_in.req.gql.g.dart';

abstract class GSignInUserReq
    implements
        Built<GSignInUserReq, GSignInUserReqBuilder>,
        _i1.OperationRequest<_i2.GSignInUserData, _i3.GSignInUserVars> {
  GSignInUserReq._();

  factory GSignInUserReq([void Function(GSignInUserReqBuilder b) updates]) =
      _$GSignInUserReq;

  static void _initializeBuilder(GSignInUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SignInUser',
    )
    ..executeOnListen = true;

  @override
  _i3.GSignInUserVars get vars;
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
  _i2.GSignInUserData? Function(
    _i2.GSignInUserData?,
    _i2.GSignInUserData?,
  )? get updateResult;
  @override
  _i2.GSignInUserData? get optimisticResponse;
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
  _i2.GSignInUserData? parseData(Map<String, dynamic> json) =>
      _i2.GSignInUserData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GSignInUserData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GSignInUserData, _i3.GSignInUserVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GSignInUserReq> get serializer =>
      _$gSignInUserReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSignInUserReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignInUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSignInUserReq.serializer,
        json,
      );
}
