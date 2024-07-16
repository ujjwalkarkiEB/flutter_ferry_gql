// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schema.schema.gql.g.dart';

abstract class GUserPostContent
    implements Built<GUserPostContent, GUserPostContentBuilder> {
  GUserPostContent._();

  factory GUserPostContent([void Function(GUserPostContentBuilder b) updates]) =
      _$GUserPostContent;

  String get title;
  String? get description;
  static Serializer<GUserPostContent> get serializer =>
      _$gUserPostContentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserPostContent.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserPostContent? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserPostContent.serializer,
        json,
      );
}

abstract class GSingUpInput
    implements Built<GSingUpInput, GSingUpInputBuilder> {
  GSingUpInput._();

  factory GSingUpInput([void Function(GSingUpInputBuilder b) updates]) =
      _$GSingUpInput;

  String get userName;
  String get email;
  String get password;
  String get repeatPassword;
  static Serializer<GSingUpInput> get serializer => _$gSingUpInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSingUpInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSingUpInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSingUpInput.serializer,
        json,
      );
}

abstract class GLoginInput implements Built<GLoginInput, GLoginInputBuilder> {
  GLoginInput._();

  factory GLoginInput([void Function(GLoginInputBuilder b) updates]) =
      _$GLoginInput;

  String get email;
  String get password;
  static Serializer<GLoginInput> get serializer => _$gLoginInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoginInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoginInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoginInput.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
