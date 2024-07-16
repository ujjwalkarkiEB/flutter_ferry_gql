// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/schema.schema.gql.dart'
    as _i1;
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_post.var.gql.g.dart';

abstract class GcreatePostVars
    implements Built<GcreatePostVars, GcreatePostVarsBuilder> {
  GcreatePostVars._();

  factory GcreatePostVars([void Function(GcreatePostVarsBuilder b) updates]) =
      _$GcreatePostVars;

  _i1.GUserPostContent? get input;
  static Serializer<GcreatePostVars> get serializer =>
      _$gcreatePostVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GcreatePostVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreatePostVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GcreatePostVars.serializer,
        json,
      );
}
