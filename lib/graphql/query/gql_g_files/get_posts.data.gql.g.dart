// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_posts.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetUserPostsListData> _$gGetUserPostsListDataSerializer =
    new _$GGetUserPostsListDataSerializer();
Serializer<GGetUserPostsListData_listUserPosts>
    _$gGetUserPostsListDataListUserPostsSerializer =
    new _$GGetUserPostsListData_listUserPostsSerializer();

class _$GGetUserPostsListDataSerializer
    implements StructuredSerializer<GGetUserPostsListData> {
  @override
  final Iterable<Type> types = const [
    GGetUserPostsListData,
    _$GGetUserPostsListData
  ];
  @override
  final String wireName = 'GGetUserPostsListData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserPostsListData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.listUserPosts;
    if (value != null) {
      result
        ..add('listUserPosts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GGetUserPostsListData_listUserPosts)
            ])));
    }
    return result;
  }

  @override
  GGetUserPostsListData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserPostsListDataBuilder();

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
        case 'listUserPosts':
          result.listUserPosts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GGetUserPostsListData_listUserPosts)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserPostsListData_listUserPostsSerializer
    implements StructuredSerializer<GGetUserPostsListData_listUserPosts> {
  @override
  final Iterable<Type> types = const [
    GGetUserPostsListData_listUserPosts,
    _$GGetUserPostsListData_listUserPosts
  ];
  @override
  final String wireName = 'GGetUserPostsListData_listUserPosts';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserPostsListData_listUserPosts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.G_id;
    if (value != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetUserPostsListData_listUserPosts deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserPostsListData_listUserPostsBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserPostsListData extends GGetUserPostsListData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetUserPostsListData_listUserPosts?>? listUserPosts;

  factory _$GGetUserPostsListData(
          [void Function(GGetUserPostsListDataBuilder)? updates]) =>
      (new GGetUserPostsListDataBuilder()..update(updates))._build();

  _$GGetUserPostsListData._({required this.G__typename, this.listUserPosts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetUserPostsListData', 'G__typename');
  }

  @override
  GGetUserPostsListData rebuild(
          void Function(GGetUserPostsListDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserPostsListDataBuilder toBuilder() =>
      new GGetUserPostsListDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserPostsListData &&
        G__typename == other.G__typename &&
        listUserPosts == other.listUserPosts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, listUserPosts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetUserPostsListData')
          ..add('G__typename', G__typename)
          ..add('listUserPosts', listUserPosts))
        .toString();
  }
}

class GGetUserPostsListDataBuilder
    implements Builder<GGetUserPostsListData, GGetUserPostsListDataBuilder> {
  _$GGetUserPostsListData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetUserPostsListData_listUserPosts?>? _listUserPosts;
  ListBuilder<GGetUserPostsListData_listUserPosts?> get listUserPosts =>
      _$this._listUserPosts ??=
          new ListBuilder<GGetUserPostsListData_listUserPosts?>();
  set listUserPosts(
          ListBuilder<GGetUserPostsListData_listUserPosts?>? listUserPosts) =>
      _$this._listUserPosts = listUserPosts;

  GGetUserPostsListDataBuilder() {
    GGetUserPostsListData._initializeBuilder(this);
  }

  GGetUserPostsListDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _listUserPosts = $v.listUserPosts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserPostsListData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserPostsListData;
  }

  @override
  void update(void Function(GGetUserPostsListDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserPostsListData build() => _build();

  _$GGetUserPostsListData _build() {
    _$GGetUserPostsListData _$result;
    try {
      _$result = _$v ??
          new _$GGetUserPostsListData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetUserPostsListData', 'G__typename'),
              listUserPosts: _listUserPosts?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listUserPosts';
        _listUserPosts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetUserPostsListData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUserPostsListData_listUserPosts
    extends GGetUserPostsListData_listUserPosts {
  @override
  final String G__typename;
  @override
  final String? G_id;
  @override
  final String? image;
  @override
  final String? title;

  factory _$GGetUserPostsListData_listUserPosts(
          [void Function(GGetUserPostsListData_listUserPostsBuilder)?
              updates]) =>
      (new GGetUserPostsListData_listUserPostsBuilder()..update(updates))
          ._build();

  _$GGetUserPostsListData_listUserPosts._(
      {required this.G__typename, this.G_id, this.image, this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetUserPostsListData_listUserPosts', 'G__typename');
  }

  @override
  GGetUserPostsListData_listUserPosts rebuild(
          void Function(GGetUserPostsListData_listUserPostsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserPostsListData_listUserPostsBuilder toBuilder() =>
      new GGetUserPostsListData_listUserPostsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserPostsListData_listUserPosts &&
        G__typename == other.G__typename &&
        G_id == other.G_id &&
        image == other.image &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, G_id.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetUserPostsListData_listUserPosts')
          ..add('G__typename', G__typename)
          ..add('G_id', G_id)
          ..add('image', image)
          ..add('title', title))
        .toString();
  }
}

class GGetUserPostsListData_listUserPostsBuilder
    implements
        Builder<GGetUserPostsListData_listUserPosts,
            GGetUserPostsListData_listUserPostsBuilder> {
  _$GGetUserPostsListData_listUserPosts? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GGetUserPostsListData_listUserPostsBuilder() {
    GGetUserPostsListData_listUserPosts._initializeBuilder(this);
  }

  GGetUserPostsListData_listUserPostsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _G_id = $v.G_id;
      _image = $v.image;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserPostsListData_listUserPosts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserPostsListData_listUserPosts;
  }

  @override
  void update(
      void Function(GGetUserPostsListData_listUserPostsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserPostsListData_listUserPosts build() => _build();

  _$GGetUserPostsListData_listUserPosts _build() {
    final _$result = _$v ??
        new _$GGetUserPostsListData_listUserPosts._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GGetUserPostsListData_listUserPosts', 'G__typename'),
            G_id: G_id,
            image: image,
            title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
