// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_signed_user.var.gql.g.dart';

abstract class GGetLoggedInUserDataVars
    implements
        Built<GGetLoggedInUserDataVars, GGetLoggedInUserDataVarsBuilder> {
  GGetLoggedInUserDataVars._();

  factory GGetLoggedInUserDataVars(
          [void Function(GGetLoggedInUserDataVarsBuilder b) updates]) =
      _$GGetLoggedInUserDataVars;

  static Serializer<GGetLoggedInUserDataVars> get serializer =>
      _$gGetLoggedInUserDataVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetLoggedInUserDataVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetLoggedInUserDataVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetLoggedInUserDataVars.serializer,
        json,
      );
}
