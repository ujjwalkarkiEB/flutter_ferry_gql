// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_post_detail.var.gql.g.dart';

abstract class GGetPostByIdVars
    implements Built<GGetPostByIdVars, GGetPostByIdVarsBuilder> {
  GGetPostByIdVars._();

  factory GGetPostByIdVars([void Function(GGetPostByIdVarsBuilder b) updates]) =
      _$GGetPostByIdVars;

  String get id;
  static Serializer<GGetPostByIdVars> get serializer =>
      _$gGetPostByIdVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetPostByIdVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetPostByIdVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetPostByIdVars.serializer,
        json,
      );
}
