// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_posts.var.gql.g.dart';

abstract class GGetUserPostsListVars
    implements Built<GGetUserPostsListVars, GGetUserPostsListVarsBuilder> {
  GGetUserPostsListVars._();

  factory GGetUserPostsListVars(
          [void Function(GGetUserPostsListVarsBuilder b) updates]) =
      _$GGetUserPostsListVars;

  static Serializer<GGetUserPostsListVars> get serializer =>
      _$gGetUserPostsListVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserPostsListVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetUserPostsListVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserPostsListVars.serializer,
        json,
      );
}
