// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_post_detail.data.gql.g.dart';

abstract class GGetPostByIdData
    implements Built<GGetPostByIdData, GGetPostByIdDataBuilder> {
  GGetPostByIdData._();

  factory GGetPostByIdData([void Function(GGetPostByIdDataBuilder b) updates]) =
      _$GGetPostByIdData;

  static void _initializeBuilder(GGetPostByIdDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetPostByIdData_getPostById? get getPostById;
  static Serializer<GGetPostByIdData> get serializer =>
      _$gGetPostByIdDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetPostByIdData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetPostByIdData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetPostByIdData.serializer,
        json,
      );
}

abstract class GGetPostByIdData_getPostById
    implements
        Built<GGetPostByIdData_getPostById,
            GGetPostByIdData_getPostByIdBuilder> {
  GGetPostByIdData_getPostById._();

  factory GGetPostByIdData_getPostById(
          [void Function(GGetPostByIdData_getPostByIdBuilder b) updates]) =
      _$GGetPostByIdData_getPostById;

  static void _initializeBuilder(GGetPostByIdData_getPostByIdBuilder b) =>
      b..G__typename = 'UserPost';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetPostByIdData_getPostById_user? get user;
  String? get title;
  String? get description;
  int? get commentCount;
  int? get likeCount;
  String? get image;
  String? get createdAt;
  String? get updatedAt;
  static Serializer<GGetPostByIdData_getPostById> get serializer =>
      _$gGetPostByIdDataGetPostByIdSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetPostByIdData_getPostById.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetPostByIdData_getPostById? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetPostByIdData_getPostById.serializer,
        json,
      );
}

abstract class GGetPostByIdData_getPostById_user
    implements
        Built<GGetPostByIdData_getPostById_user,
            GGetPostByIdData_getPostById_userBuilder> {
  GGetPostByIdData_getPostById_user._();

  factory GGetPostByIdData_getPostById_user(
          [void Function(GGetPostByIdData_getPostById_userBuilder b) updates]) =
      _$GGetPostByIdData_getPostById_user;

  static void _initializeBuilder(GGetPostByIdData_getPostById_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @BuiltValueField(wireName: '_id')
  String? get G_id;
  String? get userName;
  static Serializer<GGetPostByIdData_getPostById_user> get serializer =>
      _$gGetPostByIdDataGetPostByIdUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetPostByIdData_getPostById_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetPostByIdData_getPostById_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetPostByIdData_getPostById_user.serializer,
        json,
      );
}
