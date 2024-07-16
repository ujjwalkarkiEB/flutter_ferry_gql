// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i6;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_post_detail.ast.gql.dart'
    as _i5;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_post_detail.data.gql.dart'
    as _i2;
import 'package:auhentication_gql/graphql/query/gql_g_files/get_post_detail.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'get_post_detail.req.gql.g.dart';

abstract class GGetPostByIdReq
    implements
        Built<GGetPostByIdReq, GGetPostByIdReqBuilder>,
        _i1.OperationRequest<_i2.GGetPostByIdData, _i3.GGetPostByIdVars> {
  GGetPostByIdReq._();

  factory GGetPostByIdReq([void Function(GGetPostByIdReqBuilder b) updates]) =
      _$GGetPostByIdReq;

  static void _initializeBuilder(GGetPostByIdReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetPostById',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetPostByIdVars get vars;
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
  _i2.GGetPostByIdData? Function(
    _i2.GGetPostByIdData?,
    _i2.GGetPostByIdData?,
  )? get updateResult;
  @override
  _i2.GGetPostByIdData? get optimisticResponse;
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
  _i2.GGetPostByIdData? parseData(Map<String, dynamic> json) =>
      _i2.GGetPostByIdData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetPostByIdData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetPostByIdData, _i3.GGetPostByIdVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetPostByIdReq> get serializer =>
      _$gGetPostByIdReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetPostByIdReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetPostByIdReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetPostByIdReq.serializer,
        json,
      );
}
