// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_loggedIn_user.var.gql.g.dart';

abstract class GGetLoggedInUserVars
    implements Built<GGetLoggedInUserVars, GGetLoggedInUserVarsBuilder> {
  GGetLoggedInUserVars._();

  factory GGetLoggedInUserVars(
          [void Function(GGetLoggedInUserVarsBuilder b) updates]) =
      _$GGetLoggedInUserVars;

  static Serializer<GGetLoggedInUserVars> get serializer =>
      _$gGetLoggedInUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetLoggedInUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetLoggedInUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetLoggedInUserVars.serializer,
        json,
      );
}
