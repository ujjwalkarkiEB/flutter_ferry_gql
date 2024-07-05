// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_up.data.gql.g.dart';

abstract class GSignUpUserData
    implements Built<GSignUpUserData, GSignUpUserDataBuilder> {
  GSignUpUserData._();

  factory GSignUpUserData([void Function(GSignUpUserDataBuilder b) updates]) =
      _$GSignUpUserData;

  static void _initializeBuilder(GSignUpUserDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSignUpUserData_signUp? get signUp;
  static Serializer<GSignUpUserData> get serializer =>
      _$gSignUpUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignUpUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignUpUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignUpUserData.serializer,
        json,
      );
}

abstract class GSignUpUserData_signUp
    implements Built<GSignUpUserData_signUp, GSignUpUserData_signUpBuilder> {
  GSignUpUserData_signUp._();

  factory GSignUpUserData_signUp(
          [void Function(GSignUpUserData_signUpBuilder b) updates]) =
      _$GSignUpUserData_signUp;

  static void _initializeBuilder(GSignUpUserData_signUpBuilder b) =>
      b..G__typename = 'Token';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get token;
  static Serializer<GSignUpUserData_signUp> get serializer =>
      _$gSignUpUserDataSignUpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignUpUserData_signUp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignUpUserData_signUp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignUpUserData_signUp.serializer,
        json,
      );
}
