// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/schema.schema.gql.dart'
    as _i1;
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_up.var.gql.g.dart';

abstract class GSignUpUserVars
    implements Built<GSignUpUserVars, GSignUpUserVarsBuilder> {
  GSignUpUserVars._();

  factory GSignUpUserVars([void Function(GSignUpUserVarsBuilder b) updates]) =
      _$GSignUpUserVars;

  _i1.GAuthInput? get input;
  static Serializer<GSignUpUserVars> get serializer =>
      _$gSignUpUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSignUpUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignUpUserVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSignUpUserVars.serializer,
        json,
      );
}
