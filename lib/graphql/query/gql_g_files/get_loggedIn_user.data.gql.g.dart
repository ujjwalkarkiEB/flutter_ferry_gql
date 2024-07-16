// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_loggedIn_user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetLoggedInUserData> _$gGetLoggedInUserDataSerializer =
    new _$GGetLoggedInUserDataSerializer();
Serializer<GGetLoggedInUserData_getLoggedInUser>
    _$gGetLoggedInUserDataGetLoggedInUserSerializer =
    new _$GGetLoggedInUserData_getLoggedInUserSerializer();

class _$GGetLoggedInUserDataSerializer
    implements StructuredSerializer<GGetLoggedInUserData> {
  @override
  final Iterable<Type> types = const [
    GGetLoggedInUserData,
    _$GGetLoggedInUserData
  ];
  @override
  final String wireName = 'GGetLoggedInUserData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetLoggedInUserData object,
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
                const FullType(GGetLoggedInUserData_getLoggedInUser)));
    }
    return result;
  }

  @override
  GGetLoggedInUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetLoggedInUserDataBuilder();

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
                      const FullType(GGetLoggedInUserData_getLoggedInUser))!
              as GGetLoggedInUserData_getLoggedInUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetLoggedInUserData_getLoggedInUserSerializer
    implements StructuredSerializer<GGetLoggedInUserData_getLoggedInUser> {
  @override
  final Iterable<Type> types = const [
    GGetLoggedInUserData_getLoggedInUser,
    _$GGetLoggedInUserData_getLoggedInUser
  ];
  @override
  final String wireName = 'GGetLoggedInUserData_getLoggedInUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetLoggedInUserData_getLoggedInUser object,
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
  GGetLoggedInUserData_getLoggedInUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetLoggedInUserData_getLoggedInUserBuilder();

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

class _$GGetLoggedInUserData extends GGetLoggedInUserData {
  @override
  final String G__typename;
  @override
  final GGetLoggedInUserData_getLoggedInUser? getLoggedInUser;

  factory _$GGetLoggedInUserData(
          [void Function(GGetLoggedInUserDataBuilder)? updates]) =>
      (new GGetLoggedInUserDataBuilder()..update(updates))._build();

  _$GGetLoggedInUserData._({required this.G__typename, this.getLoggedInUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetLoggedInUserData', 'G__typename');
  }

  @override
  GGetLoggedInUserData rebuild(
          void Function(GGetLoggedInUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLoggedInUserDataBuilder toBuilder() =>
      new GGetLoggedInUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLoggedInUserData &&
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
    return (newBuiltValueToStringHelper(r'GGetLoggedInUserData')
          ..add('G__typename', G__typename)
          ..add('getLoggedInUser', getLoggedInUser))
        .toString();
  }
}

class GGetLoggedInUserDataBuilder
    implements Builder<GGetLoggedInUserData, GGetLoggedInUserDataBuilder> {
  _$GGetLoggedInUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetLoggedInUserData_getLoggedInUserBuilder? _getLoggedInUser;
  GGetLoggedInUserData_getLoggedInUserBuilder get getLoggedInUser =>
      _$this._getLoggedInUser ??=
          new GGetLoggedInUserData_getLoggedInUserBuilder();
  set getLoggedInUser(
          GGetLoggedInUserData_getLoggedInUserBuilder? getLoggedInUser) =>
      _$this._getLoggedInUser = getLoggedInUser;

  GGetLoggedInUserDataBuilder() {
    GGetLoggedInUserData._initializeBuilder(this);
  }

  GGetLoggedInUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getLoggedInUser = $v.getLoggedInUser?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetLoggedInUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLoggedInUserData;
  }

  @override
  void update(void Function(GGetLoggedInUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetLoggedInUserData build() => _build();

  _$GGetLoggedInUserData _build() {
    _$GGetLoggedInUserData _$result;
    try {
      _$result = _$v ??
          new _$GGetLoggedInUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetLoggedInUserData', 'G__typename'),
              getLoggedInUser: _getLoggedInUser?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getLoggedInUser';
        _getLoggedInUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetLoggedInUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetLoggedInUserData_getLoggedInUser
    extends GGetLoggedInUserData_getLoggedInUser {
  @override
  final String G__typename;
  @override
  final String? G_id;
  @override
  final String? userName;
  @override
  final String? email;

  factory _$GGetLoggedInUserData_getLoggedInUser(
          [void Function(GGetLoggedInUserData_getLoggedInUserBuilder)?
              updates]) =>
      (new GGetLoggedInUserData_getLoggedInUserBuilder()..update(updates))
          ._build();

  _$GGetLoggedInUserData_getLoggedInUser._(
      {required this.G__typename, this.G_id, this.userName, this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetLoggedInUserData_getLoggedInUser', 'G__typename');
  }

  @override
  GGetLoggedInUserData_getLoggedInUser rebuild(
          void Function(GGetLoggedInUserData_getLoggedInUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLoggedInUserData_getLoggedInUserBuilder toBuilder() =>
      new GGetLoggedInUserData_getLoggedInUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLoggedInUserData_getLoggedInUser &&
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
    return (newBuiltValueToStringHelper(r'GGetLoggedInUserData_getLoggedInUser')
          ..add('G__typename', G__typename)
          ..add('G_id', G_id)
          ..add('userName', userName)
          ..add('email', email))
        .toString();
  }
}

class GGetLoggedInUserData_getLoggedInUserBuilder
    implements
        Builder<GGetLoggedInUserData_getLoggedInUser,
            GGetLoggedInUserData_getLoggedInUserBuilder> {
  _$GGetLoggedInUserData_getLoggedInUser? _$v;

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

  GGetLoggedInUserData_getLoggedInUserBuilder() {
    GGetLoggedInUserData_getLoggedInUser._initializeBuilder(this);
  }

  GGetLoggedInUserData_getLoggedInUserBuilder get _$this {
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
  void replace(GGetLoggedInUserData_getLoggedInUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLoggedInUserData_getLoggedInUser;
  }

  @override
  void update(
      void Function(GGetLoggedInUserData_getLoggedInUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetLoggedInUserData_getLoggedInUser build() => _build();

  _$GGetLoggedInUserData_getLoggedInUser _build() {
    final _$result = _$v ??
        new _$GGetLoggedInUserData_getLoggedInUser._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GGetLoggedInUserData_getLoggedInUser', 'G__typename'),
            G_id: G_id,
            userName: userName,
            email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
