// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSignInUserData> _$gSignInUserDataSerializer =
    new _$GSignInUserDataSerializer();
Serializer<GSignInUserData_signIn> _$gSignInUserDataSignInSerializer =
    new _$GSignInUserData_signInSerializer();

class _$GSignInUserDataSerializer
    implements StructuredSerializer<GSignInUserData> {
  @override
  final Iterable<Type> types = const [GSignInUserData, _$GSignInUserData];
  @override
  final String wireName = 'GSignInUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSignInUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.signIn;
    if (value != null) {
      result
        ..add('signIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSignInUserData_signIn)));
    }
    return result;
  }

  @override
  GSignInUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignInUserDataBuilder();

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
        case 'signIn':
          result.signIn.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GSignInUserData_signIn))!
              as GSignInUserData_signIn);
          break;
      }
    }

    return result.build();
  }
}

class _$GSignInUserData_signInSerializer
    implements StructuredSerializer<GSignInUserData_signIn> {
  @override
  final Iterable<Type> types = const [
    GSignInUserData_signIn,
    _$GSignInUserData_signIn
  ];
  @override
  final String wireName = 'GSignInUserData_signIn';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSignInUserData_signIn object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSignInUserData_signIn deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignInUserData_signInBuilder();

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
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSignInUserData extends GSignInUserData {
  @override
  final String G__typename;
  @override
  final GSignInUserData_signIn? signIn;

  factory _$GSignInUserData([void Function(GSignInUserDataBuilder)? updates]) =>
      (new GSignInUserDataBuilder()..update(updates))._build();

  _$GSignInUserData._({required this.G__typename, this.signIn}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSignInUserData', 'G__typename');
  }

  @override
  GSignInUserData rebuild(void Function(GSignInUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignInUserDataBuilder toBuilder() =>
      new GSignInUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignInUserData &&
        G__typename == other.G__typename &&
        signIn == other.signIn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, signIn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignInUserData')
          ..add('G__typename', G__typename)
          ..add('signIn', signIn))
        .toString();
  }
}

class GSignInUserDataBuilder
    implements Builder<GSignInUserData, GSignInUserDataBuilder> {
  _$GSignInUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSignInUserData_signInBuilder? _signIn;
  GSignInUserData_signInBuilder get signIn =>
      _$this._signIn ??= new GSignInUserData_signInBuilder();
  set signIn(GSignInUserData_signInBuilder? signIn) => _$this._signIn = signIn;

  GSignInUserDataBuilder() {
    GSignInUserData._initializeBuilder(this);
  }

  GSignInUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _signIn = $v.signIn?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignInUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignInUserData;
  }

  @override
  void update(void Function(GSignInUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignInUserData build() => _build();

  _$GSignInUserData _build() {
    _$GSignInUserData _$result;
    try {
      _$result = _$v ??
          new _$GSignInUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSignInUserData', 'G__typename'),
              signIn: _signIn?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signIn';
        _signIn?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSignInUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSignInUserData_signIn extends GSignInUserData_signIn {
  @override
  final String G__typename;
  @override
  final String token;

  factory _$GSignInUserData_signIn(
          [void Function(GSignInUserData_signInBuilder)? updates]) =>
      (new GSignInUserData_signInBuilder()..update(updates))._build();

  _$GSignInUserData_signIn._({required this.G__typename, required this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSignInUserData_signIn', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        token, r'GSignInUserData_signIn', 'token');
  }

  @override
  GSignInUserData_signIn rebuild(
          void Function(GSignInUserData_signInBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignInUserData_signInBuilder toBuilder() =>
      new GSignInUserData_signInBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignInUserData_signIn &&
        G__typename == other.G__typename &&
        token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignInUserData_signIn')
          ..add('G__typename', G__typename)
          ..add('token', token))
        .toString();
  }
}

class GSignInUserData_signInBuilder
    implements Builder<GSignInUserData_signIn, GSignInUserData_signInBuilder> {
  _$GSignInUserData_signIn? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  GSignInUserData_signInBuilder() {
    GSignInUserData_signIn._initializeBuilder(this);
  }

  GSignInUserData_signInBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignInUserData_signIn other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignInUserData_signIn;
  }

  @override
  void update(void Function(GSignInUserData_signInBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignInUserData_signIn build() => _build();

  _$GSignInUserData_signIn _build() {
    final _$result = _$v ??
        new _$GSignInUserData_signIn._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GSignInUserData_signIn', 'G__typename'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'GSignInUserData_signIn', 'token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
