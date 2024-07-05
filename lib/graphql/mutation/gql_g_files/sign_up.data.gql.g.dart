// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSignUpUserData> _$gSignUpUserDataSerializer =
    new _$GSignUpUserDataSerializer();
Serializer<GSignUpUserData_signUp> _$gSignUpUserDataSignUpSerializer =
    new _$GSignUpUserData_signUpSerializer();

class _$GSignUpUserDataSerializer
    implements StructuredSerializer<GSignUpUserData> {
  @override
  final Iterable<Type> types = const [GSignUpUserData, _$GSignUpUserData];
  @override
  final String wireName = 'GSignUpUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSignUpUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.signUp;
    if (value != null) {
      result
        ..add('signUp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSignUpUserData_signUp)));
    }
    return result;
  }

  @override
  GSignUpUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignUpUserDataBuilder();

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
        case 'signUp':
          result.signUp.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GSignUpUserData_signUp))!
              as GSignUpUserData_signUp);
          break;
      }
    }

    return result.build();
  }
}

class _$GSignUpUserData_signUpSerializer
    implements StructuredSerializer<GSignUpUserData_signUp> {
  @override
  final Iterable<Type> types = const [
    GSignUpUserData_signUp,
    _$GSignUpUserData_signUp
  ];
  @override
  final String wireName = 'GSignUpUserData_signUp';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSignUpUserData_signUp object,
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
  GSignUpUserData_signUp deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignUpUserData_signUpBuilder();

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

class _$GSignUpUserData extends GSignUpUserData {
  @override
  final String G__typename;
  @override
  final GSignUpUserData_signUp? signUp;

  factory _$GSignUpUserData([void Function(GSignUpUserDataBuilder)? updates]) =>
      (new GSignUpUserDataBuilder()..update(updates))._build();

  _$GSignUpUserData._({required this.G__typename, this.signUp}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSignUpUserData', 'G__typename');
  }

  @override
  GSignUpUserData rebuild(void Function(GSignUpUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignUpUserDataBuilder toBuilder() =>
      new GSignUpUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignUpUserData &&
        G__typename == other.G__typename &&
        signUp == other.signUp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, signUp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignUpUserData')
          ..add('G__typename', G__typename)
          ..add('signUp', signUp))
        .toString();
  }
}

class GSignUpUserDataBuilder
    implements Builder<GSignUpUserData, GSignUpUserDataBuilder> {
  _$GSignUpUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSignUpUserData_signUpBuilder? _signUp;
  GSignUpUserData_signUpBuilder get signUp =>
      _$this._signUp ??= new GSignUpUserData_signUpBuilder();
  set signUp(GSignUpUserData_signUpBuilder? signUp) => _$this._signUp = signUp;

  GSignUpUserDataBuilder() {
    GSignUpUserData._initializeBuilder(this);
  }

  GSignUpUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _signUp = $v.signUp?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignUpUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignUpUserData;
  }

  @override
  void update(void Function(GSignUpUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignUpUserData build() => _build();

  _$GSignUpUserData _build() {
    _$GSignUpUserData _$result;
    try {
      _$result = _$v ??
          new _$GSignUpUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSignUpUserData', 'G__typename'),
              signUp: _signUp?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signUp';
        _signUp?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSignUpUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSignUpUserData_signUp extends GSignUpUserData_signUp {
  @override
  final String G__typename;
  @override
  final String token;

  factory _$GSignUpUserData_signUp(
          [void Function(GSignUpUserData_signUpBuilder)? updates]) =>
      (new GSignUpUserData_signUpBuilder()..update(updates))._build();

  _$GSignUpUserData_signUp._({required this.G__typename, required this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSignUpUserData_signUp', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        token, r'GSignUpUserData_signUp', 'token');
  }

  @override
  GSignUpUserData_signUp rebuild(
          void Function(GSignUpUserData_signUpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignUpUserData_signUpBuilder toBuilder() =>
      new GSignUpUserData_signUpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignUpUserData_signUp &&
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
    return (newBuiltValueToStringHelper(r'GSignUpUserData_signUp')
          ..add('G__typename', G__typename)
          ..add('token', token))
        .toString();
  }
}

class GSignUpUserData_signUpBuilder
    implements Builder<GSignUpUserData_signUp, GSignUpUserData_signUpBuilder> {
  _$GSignUpUserData_signUp? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  GSignUpUserData_signUpBuilder() {
    GSignUpUserData_signUp._initializeBuilder(this);
  }

  GSignUpUserData_signUpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignUpUserData_signUp other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignUpUserData_signUp;
  }

  @override
  void update(void Function(GSignUpUserData_signUpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignUpUserData_signUp build() => _build();

  _$GSignUpUserData_signUp _build() {
    final _$result = _$v ??
        new _$GSignUpUserData_signUp._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GSignUpUserData_signUp', 'G__typename'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'GSignUpUserData_signUp', 'token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
