// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'current_user.var.gql.g.dart';

abstract class GGetCurrentAuthenticatedUserDetailsVars
    implements
        Built<GGetCurrentAuthenticatedUserDetailsVars,
            GGetCurrentAuthenticatedUserDetailsVarsBuilder> {
  GGetCurrentAuthenticatedUserDetailsVars._();

  factory GGetCurrentAuthenticatedUserDetailsVars(
      [void Function(GGetCurrentAuthenticatedUserDetailsVarsBuilder b)
          updates]) = _$GGetCurrentAuthenticatedUserDetailsVars;

  static Serializer<GGetCurrentAuthenticatedUserDetailsVars> get serializer =>
      _$gGetCurrentAuthenticatedUserDetailsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCurrentAuthenticatedUserDetailsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCurrentAuthenticatedUserDetailsVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCurrentAuthenticatedUserDetailsVars.serializer,
        json,
      );
}
