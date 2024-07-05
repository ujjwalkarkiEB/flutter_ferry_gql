// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'current_user.data.gql.g.dart';

abstract class GGetCurrentAuthenticatedUserDetailsData
    implements
        Built<GGetCurrentAuthenticatedUserDetailsData,
            GGetCurrentAuthenticatedUserDetailsDataBuilder> {
  GGetCurrentAuthenticatedUserDetailsData._();

  factory GGetCurrentAuthenticatedUserDetailsData(
      [void Function(GGetCurrentAuthenticatedUserDetailsDataBuilder b)
          updates]) = _$GGetCurrentAuthenticatedUserDetailsData;

  static void _initializeBuilder(
          GGetCurrentAuthenticatedUserDetailsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetCurrentAuthenticatedUserDetailsData_currentUser? get currentUser;
  static Serializer<GGetCurrentAuthenticatedUserDetailsData> get serializer =>
      _$gGetCurrentAuthenticatedUserDetailsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCurrentAuthenticatedUserDetailsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCurrentAuthenticatedUserDetailsData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCurrentAuthenticatedUserDetailsData.serializer,
        json,
      );
}

abstract class GGetCurrentAuthenticatedUserDetailsData_currentUser
    implements
        Built<GGetCurrentAuthenticatedUserDetailsData_currentUser,
            GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder> {
  GGetCurrentAuthenticatedUserDetailsData_currentUser._();

  factory GGetCurrentAuthenticatedUserDetailsData_currentUser(
      [void Function(
              GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder b)
          updates]) = _$GGetCurrentAuthenticatedUserDetailsData_currentUser;

  static void _initializeBuilder(
          GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get email;
  static Serializer<GGetCurrentAuthenticatedUserDetailsData_currentUser>
      get serializer =>
          _$gGetCurrentAuthenticatedUserDetailsDataCurrentUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetCurrentAuthenticatedUserDetailsData_currentUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetCurrentAuthenticatedUserDetailsData_currentUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetCurrentAuthenticatedUserDetailsData_currentUser.serializer,
        json,
      );
}
