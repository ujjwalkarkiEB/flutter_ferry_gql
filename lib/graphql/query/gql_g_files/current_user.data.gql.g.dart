// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCurrentAuthenticatedUserDetailsData>
    _$gGetCurrentAuthenticatedUserDetailsDataSerializer =
    new _$GGetCurrentAuthenticatedUserDetailsDataSerializer();
Serializer<GGetCurrentAuthenticatedUserDetailsData_currentUser>
    _$gGetCurrentAuthenticatedUserDetailsDataCurrentUserSerializer =
    new _$GGetCurrentAuthenticatedUserDetailsData_currentUserSerializer();

class _$GGetCurrentAuthenticatedUserDetailsDataSerializer
    implements StructuredSerializer<GGetCurrentAuthenticatedUserDetailsData> {
  @override
  final Iterable<Type> types = const [
    GGetCurrentAuthenticatedUserDetailsData,
    _$GGetCurrentAuthenticatedUserDetailsData
  ];
  @override
  final String wireName = 'GGetCurrentAuthenticatedUserDetailsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetCurrentAuthenticatedUserDetailsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.currentUser;
    if (value != null) {
      result
        ..add('currentUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GGetCurrentAuthenticatedUserDetailsData_currentUser)));
    }
    return result;
  }

  @override
  GGetCurrentAuthenticatedUserDetailsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCurrentAuthenticatedUserDetailsDataBuilder();

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
        case 'currentUser':
          result.currentUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetCurrentAuthenticatedUserDetailsData_currentUser))!
              as GGetCurrentAuthenticatedUserDetailsData_currentUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCurrentAuthenticatedUserDetailsData_currentUserSerializer
    implements
        StructuredSerializer<
            GGetCurrentAuthenticatedUserDetailsData_currentUser> {
  @override
  final Iterable<Type> types = const [
    GGetCurrentAuthenticatedUserDetailsData_currentUser,
    _$GGetCurrentAuthenticatedUserDetailsData_currentUser
  ];
  @override
  final String wireName = 'GGetCurrentAuthenticatedUserDetailsData_currentUser';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetCurrentAuthenticatedUserDetailsData_currentUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
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
  GGetCurrentAuthenticatedUserDetailsData_currentUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
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

class _$GGetCurrentAuthenticatedUserDetailsData
    extends GGetCurrentAuthenticatedUserDetailsData {
  @override
  final String G__typename;
  @override
  final GGetCurrentAuthenticatedUserDetailsData_currentUser? currentUser;

  factory _$GGetCurrentAuthenticatedUserDetailsData(
          [void Function(GGetCurrentAuthenticatedUserDetailsDataBuilder)?
              updates]) =>
      (new GGetCurrentAuthenticatedUserDetailsDataBuilder()..update(updates))
          ._build();

  _$GGetCurrentAuthenticatedUserDetailsData._(
      {required this.G__typename, this.currentUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetCurrentAuthenticatedUserDetailsData', 'G__typename');
  }

  @override
  GGetCurrentAuthenticatedUserDetailsData rebuild(
          void Function(GGetCurrentAuthenticatedUserDetailsDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCurrentAuthenticatedUserDetailsDataBuilder toBuilder() =>
      new GGetCurrentAuthenticatedUserDetailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCurrentAuthenticatedUserDetailsData &&
        G__typename == other.G__typename &&
        currentUser == other.currentUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, currentUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetCurrentAuthenticatedUserDetailsData')
          ..add('G__typename', G__typename)
          ..add('currentUser', currentUser))
        .toString();
  }
}

class GGetCurrentAuthenticatedUserDetailsDataBuilder
    implements
        Builder<GGetCurrentAuthenticatedUserDetailsData,
            GGetCurrentAuthenticatedUserDetailsDataBuilder> {
  _$GGetCurrentAuthenticatedUserDetailsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder? _currentUser;
  GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder get currentUser =>
      _$this._currentUser ??=
          new GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder();
  set currentUser(
          GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder?
              currentUser) =>
      _$this._currentUser = currentUser;

  GGetCurrentAuthenticatedUserDetailsDataBuilder() {
    GGetCurrentAuthenticatedUserDetailsData._initializeBuilder(this);
  }

  GGetCurrentAuthenticatedUserDetailsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _currentUser = $v.currentUser?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCurrentAuthenticatedUserDetailsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCurrentAuthenticatedUserDetailsData;
  }

  @override
  void update(
      void Function(GGetCurrentAuthenticatedUserDetailsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCurrentAuthenticatedUserDetailsData build() => _build();

  _$GGetCurrentAuthenticatedUserDetailsData _build() {
    _$GGetCurrentAuthenticatedUserDetailsData _$result;
    try {
      _$result = _$v ??
          new _$GGetCurrentAuthenticatedUserDetailsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GGetCurrentAuthenticatedUserDetailsData', 'G__typename'),
              currentUser: _currentUser?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currentUser';
        _currentUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetCurrentAuthenticatedUserDetailsData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetCurrentAuthenticatedUserDetailsData_currentUser
    extends GGetCurrentAuthenticatedUserDetailsData_currentUser {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? email;

  factory _$GGetCurrentAuthenticatedUserDetailsData_currentUser(
          [void Function(
                  GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder)?
              updates]) =>
      (new GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder()
            ..update(updates))
          ._build();

  _$GGetCurrentAuthenticatedUserDetailsData_currentUser._(
      {required this.G__typename, this.id, this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GGetCurrentAuthenticatedUserDetailsData_currentUser', 'G__typename');
  }

  @override
  GGetCurrentAuthenticatedUserDetailsData_currentUser rebuild(
          void Function(
                  GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder toBuilder() =>
      new GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCurrentAuthenticatedUserDetailsData_currentUser &&
        G__typename == other.G__typename &&
        id == other.id &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetCurrentAuthenticatedUserDetailsData_currentUser')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('email', email))
        .toString();
  }
}

class GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder
    implements
        Builder<GGetCurrentAuthenticatedUserDetailsData_currentUser,
            GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder> {
  _$GGetCurrentAuthenticatedUserDetailsData_currentUser? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder() {
    GGetCurrentAuthenticatedUserDetailsData_currentUser._initializeBuilder(
        this);
  }

  GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCurrentAuthenticatedUserDetailsData_currentUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCurrentAuthenticatedUserDetailsData_currentUser;
  }

  @override
  void update(
      void Function(GGetCurrentAuthenticatedUserDetailsData_currentUserBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCurrentAuthenticatedUserDetailsData_currentUser build() => _build();

  _$GGetCurrentAuthenticatedUserDetailsData_currentUser _build() {
    final _$result = _$v ??
        new _$GGetCurrentAuthenticatedUserDetailsData_currentUser._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GGetCurrentAuthenticatedUserDetailsData_currentUser',
                'G__typename'),
            id: id,
            email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
