// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_posts.data.gql.g.dart';

abstract class GGetUserPostsListData
    implements Built<GGetUserPostsListData, GGetUserPostsListDataBuilder> {
  GGetUserPostsListData._();

  factory GGetUserPostsListData(
          [void Function(GGetUserPostsListDataBuilder b) updates]) =
      _$GGetUserPostsListData;

  static void _initializeBuilder(GGetUserPostsListDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetUserPostsListData_listUserPosts?>? get listUserPosts;
  static Serializer<GGetUserPostsListData> get serializer =>
      _$gGetUserPostsListDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserPostsListData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetUserPostsListData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserPostsListData.serializer,
        json,
      );
}

abstract class GGetUserPostsListData_listUserPosts
    implements
        Built<GGetUserPostsListData_listUserPosts,
            GGetUserPostsListData_listUserPostsBuilder> {
  GGetUserPostsListData_listUserPosts._();

  factory GGetUserPostsListData_listUserPosts(
      [void Function(GGetUserPostsListData_listUserPostsBuilder b)
          updates]) = _$GGetUserPostsListData_listUserPosts;

  static void _initializeBuilder(
          GGetUserPostsListData_listUserPostsBuilder b) =>
      b..G__typename = 'UserPost';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @BuiltValueField(wireName: '_id')
  String? get G_id;
  String? get image;
  String? get title;
  static Serializer<GGetUserPostsListData_listUserPosts> get serializer =>
      _$gGetUserPostsListDataListUserPostsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetUserPostsListData_listUserPosts.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetUserPostsListData_listUserPosts? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetUserPostsListData_listUserPosts.serializer,
        json,
      );
}
