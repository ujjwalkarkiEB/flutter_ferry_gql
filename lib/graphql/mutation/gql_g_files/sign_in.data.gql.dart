// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_in.data.gql.g.dart';

abstract class GSignInUserData
    implements Built<GSignInUserData, GSignInUserDataBuilder> {
  GSignInUserData._();

  factory GSignInUserData([void Function(GSignInUserDataBuilder b) updates]) =
      _$GSignInUserData;

  static void _initializeBuilder(GSignInUserDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSignInUserData_signIn? get signIn;
  static Serializer<GSignInUserData> get serializer =>
      _$gSignInUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignInUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignInUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignInUserData.serializer,
        json,
      );
}

abstract class GSignInUserData_signIn
    implements Built<GSignInUserData_signIn, GSignInUserData_signInBuilder> {
  GSignInUserData_signIn._();

  factory GSignInUserData_signIn(
          [void Function(GSignInUserData_signInBuilder b) updates]) =
      _$GSignInUserData_signIn;

  static void _initializeBuilder(GSignInUserData_signInBuilder b) =>
      b..G__typename = 'Token';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get token;
  static Serializer<GSignInUserData_signIn> get serializer =>
      _$gSignInUserDataSignInSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignInUserData_signIn.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignInUserData_signIn? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignInUserData_signIn.serializer,
        json,
      );
}
