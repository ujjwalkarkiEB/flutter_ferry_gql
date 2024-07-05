// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/schema.schema.gql.dart'
    as _i1;
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_in.var.gql.g.dart';

abstract class GSignInUserVars
    implements Built<GSignInUserVars, GSignInUserVarsBuilder> {
  GSignInUserVars._();

  factory GSignInUserVars([void Function(GSignInUserVarsBuilder b) updates]) =
      _$GSignInUserVars;

  _i1.GAuthInput? get input;
  static Serializer<GSignInUserVars> get serializer =>
      _$gSignInUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSignInUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignInUserVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSignInUserVars.serializer,
        json,
      );
}
