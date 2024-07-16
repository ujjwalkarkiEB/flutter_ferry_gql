// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_signed_user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetLoggedInUserDataData> _$gGetLoggedInUserDataDataSerializer =
    new _$GGetLoggedInUserDataDataSerializer();
Serializer<GGetLoggedInUserDataData_getLoggedInUser>
    _$gGetLoggedInUserDataDataGetLoggedInUserSerializer =
    new _$GGetLoggedInUserDataData_getLoggedInUserSerializer();

class _$GGetLoggedInUserDataDataSerializer
    implements StructuredSerializer<GGetLoggedInUserDataData> {
  @override
  final Iterable<Type> types = const [
    GGetLoggedInUserDataData,
    _$GGetLoggedInUserDataData
  ];
  @override
  final String wireName = 'GGetLoggedInUserDataData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetLoggedInUserDataData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getLoggedInUser;
    if (value != null) {
      result
        ..add('getLoggedInUser')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GGetLoggedInUserDataData_getLoggedInUser)));
    }
    return result;
  }

  @override
  GGetLoggedInUserDataData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetLoggedInUserDataDataBuilder();

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
        case 'getLoggedInUser':
          result.getLoggedInUser.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetLoggedInUserDataData_getLoggedInUser))!
              as GGetLoggedInUserDataData_getLoggedInUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetLoggedInUserDataData_getLoggedInUserSerializer
    implements StructuredSerializer<GGetLoggedInUserDataData_getLoggedInUser> {
  @override
  final Iterable<Type> types = const [
    GGetLoggedInUserDataData_getLoggedInUser,
    _$GGetLoggedInUserDataData_getLoggedInUser
  ];
  @override
  final String wireName = 'GGetLoggedInUserDataData_getLoggedInUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetLoggedInUserDataData_getLoggedInUser object,
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
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetLoggedInUserDataData_getLoggedInUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetLoggedInUserDataData_getLoggedInUserBuilder();

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
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetLoggedInUserDataData extends GGetLoggedInUserDataData {
  @override
  final String G__typename;
  @override
  final GGetLoggedInUserDataData_getLoggedInUser? getLoggedInUser;

  factory _$GGetLoggedInUserDataData(
          [void Function(GGetLoggedInUserDataDataBuilder)? updates]) =>
      (new GGetLoggedInUserDataDataBuilder()..update(updates))._build();

  _$GGetLoggedInUserDataData._(
      {required this.G__typename, this.getLoggedInUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetLoggedInUserDataData', 'G__typename');
  }

  @override
  GGetLoggedInUserDataData rebuild(
          void Function(GGetLoggedInUserDataDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLoggedInUserDataDataBuilder toBuilder() =>
      new GGetLoggedInUserDataDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLoggedInUserDataData &&
        G__typename == other.G__typename &&
        getLoggedInUser == other.getLoggedInUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getLoggedInUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetLoggedInUserDataData')
          ..add('G__typename', G__typename)
          ..add('getLoggedInUser', getLoggedInUser))
        .toString();
  }
}

class GGetLoggedInUserDataDataBuilder
    implements
        Builder<GGetLoggedInUserDataData, GGetLoggedInUserDataDataBuilder> {
  _$GGetLoggedInUserDataData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetLoggedInUserDataData_getLoggedInUserBuilder? _getLoggedInUser;
  GGetLoggedInUserDataData_getLoggedInUserBuilder get getLoggedInUser =>
      _$this._getLoggedInUser ??=
          new GGetLoggedInUserDataData_getLoggedInUserBuilder();
  set getLoggedInUser(
          GGetLoggedInUserDataData_getLoggedInUserBuilder? getLoggedInUser) =>
      _$this._getLoggedInUser = getLoggedInUser;

  GGetLoggedInUserDataDataBuilder() {
    GGetLoggedInUserDataData._initializeBuilder(this);
  }

  GGetLoggedInUserDataDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getLoggedInUser = $v.getLoggedInUser?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetLoggedInUserDataData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLoggedInUserDataData;
  }

  @override
  void update(void Function(GGetLoggedInUserDataDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetLoggedInUserDataData build() => _build();

  _$GGetLoggedInUserDataData _build() {
    _$GGetLoggedInUserDataData _$result;
    try {
      _$result = _$v ??
          new _$GGetLoggedInUserDataData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetLoggedInUserDataData', 'G__typename'),
              getLoggedInUser: _getLoggedInUser?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getLoggedInUser';
        _getLoggedInUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetLoggedInUserDataData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetLoggedInUserDataData_getLoggedInUser
    extends GGetLoggedInUserDataData_getLoggedInUser {
  @override
  final String G__typename;
  @override
  final String? G_id;
  @override
  final String? userName;
  @override
  final String? email;

  factory _$GGetLoggedInUserDataData_getLoggedInUser(
          [void Function(GGetLoggedInUserDataData_getLoggedInUserBuilder)?
              updates]) =>
      (new GGetLoggedInUserDataData_getLoggedInUserBuilder()..update(updates))
          ._build();

  _$GGetLoggedInUserDataData_getLoggedInUser._(
      {required this.G__typename, this.G_id, this.userName, this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GGetLoggedInUserDataData_getLoggedInUser', 'G__typename');
  }

  @override
  GGetLoggedInUserDataData_getLoggedInUser rebuild(
          void Function(GGetLoggedInUserDataData_getLoggedInUserBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLoggedInUserDataData_getLoggedInUserBuilder toBuilder() =>
      new GGetLoggedInUserDataData_getLoggedInUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLoggedInUserDataData_getLoggedInUser &&
        G__typename == other.G__typename &&
        G_id == other.G_id &&
        userName == other.userName &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, G_id.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetLoggedInUserDataData_getLoggedInUser')
          ..add('G__typename', G__typename)
          ..add('G_id', G_id)
          ..add('userName', userName)
          ..add('email', email))
        .toString();
  }
}

class GGetLoggedInUserDataData_getLoggedInUserBuilder
    implements
        Builder<GGetLoggedInUserDataData_getLoggedInUser,
            GGetLoggedInUserDataData_getLoggedInUserBuilder> {
  _$GGetLoggedInUserDataData_getLoggedInUser? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GGetLoggedInUserDataData_getLoggedInUserBuilder() {
    GGetLoggedInUserDataData_getLoggedInUser._initializeBuilder(this);
  }

  GGetLoggedInUserDataData_getLoggedInUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _G_id = $v.G_id;
      _userName = $v.userName;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetLoggedInUserDataData_getLoggedInUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLoggedInUserDataData_getLoggedInUser;
  }

  @override
  void update(
      void Function(GGetLoggedInUserDataData_getLoggedInUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetLoggedInUserDataData_getLoggedInUser build() => _build();

  _$GGetLoggedInUserDataData_getLoggedInUser _build() {
    final _$result = _$v ??
        new _$GGetLoggedInUserDataData_getLoggedInUser._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GGetLoggedInUserDataData_getLoggedInUser', 'G__typename'),
            G_id: G_id,
            userName: userName,
            email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
