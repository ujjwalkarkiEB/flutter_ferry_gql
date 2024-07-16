// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GcreatePostData> _$gcreatePostDataSerializer =
    new _$GcreatePostDataSerializer();
Serializer<GcreatePostData_createPost> _$gcreatePostDataCreatePostSerializer =
    new _$GcreatePostData_createPostSerializer();

class _$GcreatePostDataSerializer
    implements StructuredSerializer<GcreatePostData> {
  @override
  final Iterable<Type> types = const [GcreatePostData, _$GcreatePostData];
  @override
  final String wireName = 'GcreatePostData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GcreatePostData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createPost;
    if (value != null) {
      result
        ..add('createPost')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GcreatePostData_createPost)));
    }
    return result;
  }

  @override
  GcreatePostData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreatePostDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createPost':
          result.createPost.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GcreatePostData_createPost))!
              as GcreatePostData_createPost);
          break;
      }
    }

    return result.build();
  }
}

class _$GcreatePostData_createPostSerializer
    implements StructuredSerializer<GcreatePostData_createPost> {
  @override
  final Iterable<Type> types = const [
    GcreatePostData_createPost,
    _$GcreatePostData_createPost
  ];
  @override
  final String wireName = 'GcreatePostData_createPost';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcreatePostData_createPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      '_id',
      serializers.serialize(object.G_id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GcreatePostData_createPost deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreatePostData_createPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case '_id':
          result.G_id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GcreatePostData extends GcreatePostData {
  @override
  final String G__typename;
  @override
  final GcreatePostData_createPost? createPost;

  factory _$GcreatePostData([void Function(GcreatePostDataBuilder)? updates]) =>
      (new GcreatePostDataBuilder()..update(updates))._build();

  _$GcreatePostData._({required this.G__typename, this.createPost})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GcreatePostData', 'G__typename');
  }

  @override
  GcreatePostData rebuild(void Function(GcreatePostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreatePostDataBuilder toBuilder() =>
      new GcreatePostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreatePostData &&
        G__typename == other.G__typename &&
        createPost == other.createPost;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createPost.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcreatePostData')
          ..add('G__typename', G__typename)
          ..add('createPost', createPost))
        .toString();
  }
}

class GcreatePostDataBuilder
    implements Builder<GcreatePostData, GcreatePostDataBuilder> {
  _$GcreatePostData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GcreatePostData_createPostBuilder? _createPost;
  GcreatePostData_createPostBuilder get createPost =>
      _$this._createPost ??= new GcreatePostData_createPostBuilder();
  set createPost(GcreatePostData_createPostBuilder? createPost) =>
      _$this._createPost = createPost;

  GcreatePostDataBuilder() {
    GcreatePostData._initializeBuilder(this);
  }

  GcreatePostDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createPost = $v.createPost?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreatePostData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreatePostData;
  }

  @override
  void update(void Function(GcreatePostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreatePostData build() => _build();

  _$GcreatePostData _build() {
    _$GcreatePostData _$result;
    try {
      _$result = _$v ??
          new _$GcreatePostData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GcreatePostData', 'G__typename'),
              createPost: _createPost?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createPost';
        _createPost?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GcreatePostData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GcreatePostData_createPost extends GcreatePostData_createPost {
  @override
  final String G__typename;
  @override
  final String G_id;

  factory _$GcreatePostData_createPost(
          [void Function(GcreatePostData_createPostBuilder)? updates]) =>
      (new GcreatePostData_createPostBuilder()..update(updates))._build();

  _$GcreatePostData_createPost._(
      {required this.G__typename, required this.G_id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GcreatePostData_createPost', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        G_id, r'GcreatePostData_createPost', 'G_id');
  }

  @override
  GcreatePostData_createPost rebuild(
          void Function(GcreatePostData_createPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreatePostData_createPostBuilder toBuilder() =>
      new GcreatePostData_createPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreatePostData_createPost &&
        G__typename == other.G__typename &&
        G_id == other.G_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, G_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcreatePostData_createPost')
          ..add('G__typename', G__typename)
          ..add('G_id', G_id))
        .toString();
  }
}

class GcreatePostData_createPostBuilder
    implements
        Builder<GcreatePostData_createPost, GcreatePostData_createPostBuilder> {
  _$GcreatePostData_createPost? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  GcreatePostData_createPostBuilder() {
    GcreatePostData_createPost._initializeBuilder(this);
  }

  GcreatePostData_createPostBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _G_id = $v.G_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreatePostData_createPost other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreatePostData_createPost;
  }

  @override
  void update(void Function(GcreatePostData_createPostBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreatePostData_createPost build() => _build();

  _$GcreatePostData_createPost _build() {
    final _$result = _$v ??
        new _$GcreatePostData_createPost._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GcreatePostData_createPost', 'G__typename'),
            G_id: BuiltValueNullFieldError.checkNotNull(
                G_id, r'GcreatePostData_createPost', 'G_id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
