// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auhentication_gql/graphql/gql_g_files/serializers.gql.dart'
    as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_post.data.gql.g.dart';

abstract class GcreatePostData
    implements Built<GcreatePostData, GcreatePostDataBuilder> {
  GcreatePostData._();

  factory GcreatePostData([void Function(GcreatePostDataBuilder b) updates]) =
      _$GcreatePostData;

  static void _initializeBuilder(GcreatePostDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GcreatePostData_createPost? get createPost;
  static Serializer<GcreatePostData> get serializer =>
      _$gcreatePostDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreatePostData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreatePostData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreatePostData.serializer,
        json,
      );
}

abstract class GcreatePostData_createPost
    implements
        Built<GcreatePostData_createPost, GcreatePostData_createPostBuilder> {
  GcreatePostData_createPost._();

  factory GcreatePostData_createPost(
          [void Function(GcreatePostData_createPostBuilder b) updates]) =
      _$GcreatePostData_createPost;

  static void _initializeBuilder(GcreatePostData_createPostBuilder b) =>
      b..G__typename = 'Post';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @BuiltValueField(wireName: '_id')
  String get G_id;
  static Serializer<GcreatePostData_createPost> get serializer =>
      _$gcreatePostDataCreatePostSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreatePostData_createPost.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreatePostData_createPost? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreatePostData_createPost.serializer,
        json,
      );
}
