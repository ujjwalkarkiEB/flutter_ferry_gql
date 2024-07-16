// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_refresh_toke.var.gql.g.dart';

abstract class GRefreshTokenVars
    implements Built<GRefreshTokenVars, GRefreshTokenVarsBuilder> {
  GRefreshTokenVars._();

  factory GRefreshTokenVars(
          [void Function(GRefreshTokenVarsBuilder b) updates]) =
      _$GRefreshTokenVars;

  String get refreshToken;
  static Serializer<GRefreshTokenVars> get serializer =>
      _$gRefreshTokenVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRefreshTokenVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRefreshTokenVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRefreshTokenVars.serializer,
        json,
      );
}
