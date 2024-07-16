// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_refresh_toke.data.gql.g.dart';

abstract class GRefreshTokenData
    implements Built<GRefreshTokenData, GRefreshTokenDataBuilder> {
  GRefreshTokenData._();

  factory GRefreshTokenData(
          [void Function(GRefreshTokenDataBuilder b) updates]) =
      _$GRefreshTokenData;

  static void _initializeBuilder(GRefreshTokenDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get refreshToken;
  static Serializer<GRefreshTokenData> get serializer =>
      _$gRefreshTokenDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRefreshTokenData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRefreshTokenData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRefreshTokenData.serializer,
        json,
      );
}
