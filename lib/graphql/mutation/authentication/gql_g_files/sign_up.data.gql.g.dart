// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSignUpUserData> _$gSignUpUserDataSerializer =
    new _$GSignUpUserDataSerializer();
Serializer<GSignUpUserData_register> _$gSignUpUserDataRegisterSerializer =
    new _$GSignUpUserData_registerSerializer();

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
    value = object.register;
    if (value != null) {
      result
        ..add('register')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSignUpUserData_register)));
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
        case 'register':
          result.register.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GSignUpUserData_register))!
              as GSignUpUserData_register);
          break;
      }
    }

    return result.build();
  }
}

class _$GSignUpUserData_registerSerializer
    implements StructuredSerializer<GSignUpUserData_register> {
  @override
  final Iterable<Type> types = const [
    GSignUpUserData_register,
    _$GSignUpUserData_register
  ];
  @override
  final String wireName = 'GSignUpUserData_register';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSignUpUserData_register object,
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
    return result;
  }

  @override
  GSignUpUserData_register deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignUpUserData_registerBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GSignUpUserData extends GSignUpUserData {
  @override
  final String G__typename;
  @override
  final GSignUpUserData_register? register;

  factory _$GSignUpUserData([void Function(GSignUpUserDataBuilder)? updates]) =>
      (new GSignUpUserDataBuilder()..update(updates))._build();

  _$GSignUpUserData._({required this.G__typename, this.register}) : super._() {
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
        register == other.register;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, register.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignUpUserData')
          ..add('G__typename', G__typename)
          ..add('register', register))
        .toString();
  }
}

class GSignUpUserDataBuilder
    implements Builder<GSignUpUserData, GSignUpUserDataBuilder> {
  _$GSignUpUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSignUpUserData_registerBuilder? _register;
  GSignUpUserData_registerBuilder get register =>
      _$this._register ??= new GSignUpUserData_registerBuilder();
  set register(GSignUpUserData_registerBuilder? register) =>
      _$this._register = register;

  GSignUpUserDataBuilder() {
    GSignUpUserData._initializeBuilder(this);
  }

  GSignUpUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _register = $v.register?.toBuilder();
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
              register: _register?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'register';
        _register?.build();
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

class _$GSignUpUserData_register extends GSignUpUserData_register {
  @override
  final String G__typename;
  @override
  final String? G_id;

  factory _$GSignUpUserData_register(
          [void Function(GSignUpUserData_registerBuilder)? updates]) =>
      (new GSignUpUserData_registerBuilder()..update(updates))._build();

  _$GSignUpUserData_register._({required this.G__typename, this.G_id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSignUpUserData_register', 'G__typename');
  }

  @override
  GSignUpUserData_register rebuild(
          void Function(GSignUpUserData_registerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignUpUserData_registerBuilder toBuilder() =>
      new GSignUpUserData_registerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignUpUserData_register &&
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
    return (newBuiltValueToStringHelper(r'GSignUpUserData_register')
          ..add('G__typename', G__typename)
          ..add('G_id', G_id))
        .toString();
  }
}

class GSignUpUserData_registerBuilder
    implements
        Builder<GSignUpUserData_register, GSignUpUserData_registerBuilder> {
  _$GSignUpUserData_register? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _G_id;
  String? get G_id => _$this._G_id;
  set G_id(String? G_id) => _$this._G_id = G_id;

  GSignUpUserData_registerBuilder() {
    GSignUpUserData_register._initializeBuilder(this);
  }

  GSignUpUserData_registerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _G_id = $v.G_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignUpUserData_register other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignUpUserData_register;
  }

  @override
  void update(void Function(GSignUpUserData_registerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignUpUserData_register build() => _build();

  _$GSignUpUserData_register _build() {
    final _$result = _$v ??
        new _$GSignUpUserData_register._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GSignUpUserData_register', 'G__typename'),
            G_id: G_id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
