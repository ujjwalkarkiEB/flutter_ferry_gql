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
  GSignUpUserData_register? get register;
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

abstract class GSignUpUserData_register
    implements
        Built<GSignUpUserData_register, GSignUpUserData_registerBuilder> {
  GSignUpUserData_register._();

  factory GSignUpUserData_register(
          [void Function(GSignUpUserData_registerBuilder b) updates]) =
      _$GSignUpUserData_register;

  static void _initializeBuilder(GSignUpUserData_registerBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @BuiltValueField(wireName: '_id')
  String? get G_id;
  static Serializer<GSignUpUserData_register> get serializer =>
      _$gSignUpUserDataRegisterSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignUpUserData_register.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignUpUserData_register? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignUpUserData_register.serializer,
        json,
      );
}
