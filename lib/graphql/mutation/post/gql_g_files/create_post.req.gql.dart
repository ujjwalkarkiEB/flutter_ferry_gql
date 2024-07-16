// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i6;
import 'package:auhentication_gql/graphql/mutation/post/gql_g_files/create_post.ast.gql.dart'
    as _i5;
import 'package:auhentication_gql/graphql/mutation/post/gql_g_files/create_post.data.gql.dart'
    as _i2;
import 'package:auhentication_gql/graphql/mutation/post/gql_g_files/create_post.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'create_post.req.gql.g.dart';

abstract class GcreatePostReq
    implements
        Built<GcreatePostReq, GcreatePostReqBuilder>,
        _i1.OperationRequest<_i2.GcreatePostData, _i3.GcreatePostVars> {
  GcreatePostReq._();

  factory GcreatePostReq([void Function(GcreatePostReqBuilder b) updates]) =
      _$GcreatePostReq;

  static void _initializeBuilder(GcreatePostReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'createPost',
    )
    ..executeOnListen = true;

  @override
  _i3.GcreatePostVars get vars;
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
  _i2.GcreatePostData? Function(
    _i2.GcreatePostData?,
    _i2.GcreatePostData?,
  )? get updateResult;
  @override
  _i2.GcreatePostData? get optimisticResponse;
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
  _i2.GcreatePostData? parseData(Map<String, dynamic> json) =>
      _i2.GcreatePostData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GcreatePostData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GcreatePostData, _i3.GcreatePostVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GcreatePostReq> get serializer =>
      _$gcreatePostReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GcreatePostReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreatePostReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GcreatePostReq.serializer,
        json,
      );
}
