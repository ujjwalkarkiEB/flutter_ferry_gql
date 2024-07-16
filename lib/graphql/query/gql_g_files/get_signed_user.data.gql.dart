// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_signed_user.data.gql.g.dart';

abstract class GGetLoggedInUserDataData
    implements
        Built<GGetLoggedInUserDataData, GGetLoggedInUserDataDataBuilder> {
  GGetLoggedInUserDataData._();

  factory GGetLoggedInUserDataData(
          [void Function(GGetLoggedInUserDataDataBuilder b) updates]) =
      _$GGetLoggedInUserDataData;

  static void _initializeBuilder(GGetLoggedInUserDataDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetLoggedInUserDataData_getLoggedInUser? get getLoggedInUser;
  static Serializer<GGetLoggedInUserDataData> get serializer =>
      _$gGetLoggedInUserDataDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetLoggedInUserDataData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetLoggedInUserDataData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetLoggedInUserDataData.serializer,
        json,
      );
}

abstract class GGetLoggedInUserDataData_getLoggedInUser
    implements
        Built<GGetLoggedInUserDataData_getLoggedInUser,
            GGetLoggedInUserDataData_getLoggedInUserBuilder> {
  GGetLoggedInUserDataData_getLoggedInUser._();

  factory GGetLoggedInUserDataData_getLoggedInUser(
      [void Function(GGetLoggedInUserDataData_getLoggedInUserBuilder b)
          updates]) = _$GGetLoggedInUserDataData_getLoggedInUser;

  static void _initializeBuilder(
          GGetLoggedInUserDataData_getLoggedInUserBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @BuiltValueField(wireName: '_id')
  String? get G_id;
  String? get userName;
  String? get email;
  static Serializer<GGetLoggedInUserDataData_getLoggedInUser> get serializer =>
      _$gGetLoggedInUserDataDataGetLoggedInUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetLoggedInUserDataData_getLoggedInUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetLoggedInUserDataData_getLoggedInUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetLoggedInUserDataData_getLoggedInUser.serializer,
        json,
      );
}
