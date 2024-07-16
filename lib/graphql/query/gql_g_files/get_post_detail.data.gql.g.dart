// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_post_detail.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetPostByIdData> _$gGetPostByIdDataSerializer =
    new _$GGetPostByIdDataSerializer();
Serializer<GGetPostByIdData_getPostById>
    _$gGetPostByIdDataGetPostByIdSerializer =
    new _$GGetPostByIdData_getPostByIdSerializer();
Serializer<GGetPostByIdData_getPostById_user>
    _$gGetPostByIdDataGetPostByIdUserSerializer =
    new _$GGetPostByIdData_getPostById_userSerializer();

class _$GGetPostByIdDataSerializer
    implements StructuredSerializer<GGetPostByIdData> {
  @override
  final Iterable<Type> types = const [GGetPostByIdData, _$GGetPostByIdData];
  @override
  final String wireName = 'GGetPostByIdData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetPostByIdData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getPostById;
    if (value != null) {
      result
        ..add('getPostById')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GGetPostByIdData_getPostById)));
    }
    return result;
  }

  @override
  GGetPostByIdData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetPostByIdDataBuilder();

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
        case 'getPostById':
          result.getPostById.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetPostByIdData_getPostById))!
              as GGetPostByIdData_getPostById);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetPostByIdData_getPostByIdSerializer
    implements StructuredSerializer<GGetPostByIdData_getPostById> {
  @override
  final Iterable<Type> types = const [
    GGetPostByIdData_getPostById,
    _$GGetPostByIdData_getPostById
  ];
  @override
  final String wireName = 'GGetPostByIdData_getPostById';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetPostByIdData_getPostById object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GGetPostByIdData_getPostById_user)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.commentCount;
    if (value != null) {
      result
        ..add('commentCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.likeCount;
    if (value != null) {
      result
        ..add('likeCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetPostByIdData_getPostById deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetPostByIdData_getPostByIdBuilder();

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
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetPostByIdData_getPostById_user))!
              as GGetPostByIdData_getPostById_user);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'commentCount':
          result.commentCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetPostByIdData_getPostById_userSerializer
    implements StructuredSerializer<GGetPostByIdData_getPostById_user> {
  @override
  final Iterable<Type> types = const [
    GGetPostByIdData_getPostById_user,
    _$GGetPostByIdData_getPostById_user
  ];
  @override
  final String wireName = 'GGetPostByIdData_getPostById_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetPostByIdData_getPostById_user object,
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
    value = object.userName;
    if (value != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetPostByIdData_getPostById_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetPostByIdData_getPostById_userBuilder();

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
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetPostByIdData extends GGetPostByIdData {
  @override
  final String G__typename;
  @override
  final GGetPostByIdData_getPostById? getPostById;

  factory _$GGetPostByIdData(
          [void Function(GGetPostByIdDataBuilder)? updates]) =>
      (new GGetPostByIdDataBuilder()..update(updates))._build();

  _$GGetPostByIdData._({required this.G__typename, this.getPostById})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetPostByIdData', 'G__typename');
  }

  @override
  GGetPostByIdData rebuild(void Function(GGetPostByIdDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetPostByIdDataBuilder toBuilder() =>
      new GGetPostByIdDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetPostByIdData &&
        G__typename == other.G__typename &&
        getPostById == other.getPostById;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getPostById.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetPostByIdData')
          ..add('G__typename', G__typename)
          ..add('getPostById', getPostById))
        .toString();
  }
}

class GGetPostByIdDataBuilder
    implements Builder<GGetPostByIdData, GGetPostByIdDataBuilder> {
  _$GGetPostByIdData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetPostByIdData_getPostByIdBuilder? _getPostById;
  GGetPostByIdData_getPostByIdBuilder get getPostById =>
      _$this._getPostById ??= new GGetPostByIdData_getPostByIdBuilder();
  set getPostById(GGetPostByIdData_getPostByIdBuilder? getPostById) =>
      _$this._getPostById = getPostById;

  GGetPostByIdDataBuilder() {
    GGetPostByIdData._initializeBuilder(this);
  }

  GGetPostByIdDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getPostById = $v.getPostById?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetPostByIdData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetPostByIdData;
  }

  @override
  void update(void Function(GGetPostByIdDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetPostByIdData build() => _build();

  _$GGetPostByIdData _build() {
    _$GGetPostByIdData _$result;
    try {
      _$result = _$v ??
          new _$GGetPostByIdData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetPostByIdData', 'G__typename'),
              getPostById: _getPostById?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getPostById';
        _getPostById?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetPostByIdData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetPostByIdData_getPostById extends GGetPostByIdData_getPostById {
  @override
  final String G__typename;
  @override
  final GGetPostByIdData_getPostById_user? user;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? commentCount;
  @override
  final int? likeCount;
  @override
  final String? image;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  factory _$GGetPostByIdData_getPostById(
          [void Function(GGetPostByIdData_getPostByIdBuilder)? updates]) =>
      (new GGetPostByIdData_getPostByIdBuilder()..update(updates))._build();

  _$GGetPostByIdData_getPostById._(
      {required this.G__typename,
      this.user,
      this.title,
      this.description,
      this.commentCount,
      this.likeCount,
      this.image,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetPostByIdData_getPostById', 'G__typename');
  }

  @override
  GGetPostByIdData_getPostById rebuild(
          void Function(GGetPostByIdData_getPostByIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetPostByIdData_getPostByIdBuilder toBuilder() =>
      new GGetPostByIdData_getPostByIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetPostByIdData_getPostById &&
        G__typename == other.G__typename &&
        user == other.user &&
        title == other.title &&
        description == other.description &&
        commentCount == other.commentCount &&
        likeCount == other.likeCount &&
        image == other.image &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, commentCount.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetPostByIdData_getPostById')
          ..add('G__typename', G__typename)
          ..add('user', user)
          ..add('title', title)
          ..add('description', description)
          ..add('commentCount', commentCount)
          ..add('likeCount', likeCount)
          ..add('image', image)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GGetPostByIdData_getPostByIdBuilder
    implements
        Builder<GGetPostByIdData_getPostById,
            GGetPostByIdData_getPostByIdBuilder> {
  _$GGetPostByIdData_getPostById? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetPostByIdData_getPostById_userBuilder? _user;
  GGetPostByIdData_getPostById_userBuilder get user =>
      _$this._user ??= new GGetPostByIdData_getPostById_userBuilder();
  set user(GGetPostByIdData_getPostById_userBuilder? user) =>
      _$this._user = user;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _commentCount;
  int? get commentCount => _$this._commentCount;
  set commentCount(int? commentCount) => _$this._commentCount = commentCount;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  GGetPostByIdData_getPostByIdBuilder() {
    GGetPostByIdData_getPostById._initializeBuilder(this);
  }

  GGetPostByIdData_getPostByIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _user = $v.user?.toBuilder();
      _title = $v.title;
      _description = $v.description;
      _commentCount = $v.commentCount;
      _likeCount = $v.likeCount;
      _image = $v.image;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetPostByIdData_getPostById other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetPostByIdData_getPostById;
  }

  @override
  void update(void Function(GGetPostByIdData_getPostByIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetPostByIdData_getPostById build() => _build();

  _$GGetPostByIdData_getPostById _build() {
    _$GGetPostByIdData_getPostById _$result;
    try {
      _$result = _$v ??
          new _$GGetPostByIdData_getPostById._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetPostByIdData_getPostById', 'G__typename'),
              user: _user?.build(),
              title: title,
              description: description,
              commentCount: commentCount,
              likeCount: likeCount,
              image: image,
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetPostByIdData_getPostById', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetPostByIdData_getPostById_user
    extends GGetPostByIdData_getPostById_user {
  @override
  final String G__typename;
  @override
  final String? G_id;
  @override
  final String? userName;

  factory _$GGetPostByIdData_getPostById_user(
          [void Function(GGetPostByIdData_getPostById_userBuilder)? updates]) =>
      (new GGetPostByIdData_getPostById_userBuilder()..update(updates))
          ._build();

  _$GGetPostByIdData_getPostById_user._(
      {required this.G__typename, this.G_id, this.userName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetPostByIdData_getPostById_user', 'G__typename');
  }

  @override
  GGetPostByIdData_getPostById_user rebuild(
          void Function(GGetPostByIdData_getPostById_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetPostByIdData_getPostById_userBuilder toBuilder() =>
      new GGetPostByIdData_getPostById_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetPostByIdData_getPostById_user &&
        G__typename == other.G__typename &&
        G_id == other.G_id &&
        userName == other.userName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, G_id.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetPostByIdData_getPostById_user')
          ..add('G__typename', G__typename)
          ..add('G_id', G_id)
          ..add('userName', userName))
        .toString();
  }
}

class GGetPostByIdData_getPostById_userBuilder
    implements
        Builder<GGetPostByIdData_getPostById_user,
            GGetPostByIdData_getPostById_userBuilder> {
  _$GGetPostByIdData_getPostById_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  GGetPostByIdData_getPostById_userBuilder() {
    GGetPostByIdData_getPostById_user._initializeBuilder(this);
  }

  GGetPostByIdData_getPostById_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _G_id = $v.G_id;
      _userName = $v.userName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetPostByIdData_getPostById_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetPostByIdData_getPostById_user;
  }

  @override
  void update(
      void Function(GGetPostByIdData_getPostById_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetPostByIdData_getPostById_user build() => _build();

  _$GGetPostByIdData_getPostById_user _build() {
    final _$result = _$v ??
        new _$GGetPostByIdData_getPostById_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GGetPostByIdData_getPostById_user', 'G__typename'),
            G_id: G_id,
            userName: userName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
