// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_loggedIn_user.data.gql.g.dart';

abstract class GGetLoggedInUserData
    implements Built<GGetLoggedInUserData, GGetLoggedInUserDataBuilder> {
  GGetLoggedInUserData._();

  factory GGetLoggedInUserData(
          [void Function(GGetLoggedInUserDataBuilder b) updates]) =
      _$GGetLoggedInUserData;

  static void _initializeBuilder(GGetLoggedInUserDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetLoggedInUserData_getLoggedInUser? get getLoggedInUser;
  static Serializer<GGetLoggedInUserData> get serializer =>
      _$gGetLoggedInUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetLoggedInUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetLoggedInUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetLoggedInUserData.serializer,
        json,
      );
}

abstract class GGetLoggedInUserData_getLoggedInUser
    implements
        Built<GGetLoggedInUserData_getLoggedInUser,
            GGetLoggedInUserData_getLoggedInUserBuilder> {
  GGetLoggedInUserData_getLoggedInUser._();

  factory GGetLoggedInUserData_getLoggedInUser(
      [void Function(GGetLoggedInUserData_getLoggedInUserBuilder b)
          updates]) = _$GGetLoggedInUserData_getLoggedInUser;

  static void _initializeBuilder(
          GGetLoggedInUserData_getLoggedInUserBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @BuiltValueField(wireName: '_id')
  String? get G_id;
  String? get userName;
  String? get email;
  static Serializer<GGetLoggedInUserData_getLoggedInUser> get serializer =>
      _$gGetLoggedInUserDataGetLoggedInUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetLoggedInUserData_getLoggedInUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetLoggedInUserData_getLoggedInUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetLoggedInUserData_getLoggedInUser.serializer,
        json,
      );
}
