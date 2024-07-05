// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schema.schema.gql.g.dart';

abstract class GAuthInput implements Built<GAuthInput, GAuthInputBuilder> {
  GAuthInput._();

  factory GAuthInput([void Function(GAuthInputBuilder b) updates]) =
      _$GAuthInput;

  String? get email;
  String? get password;
  static Serializer<GAuthInput> get serializer => _$gAuthInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAuthInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAuthInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAuthInput.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
