// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAuthInput> _$gAuthInputSerializer = new _$GAuthInputSerializer();

class _$GAuthInputSerializer implements StructuredSerializer<GAuthInput> {
  @override
  final Iterable<Type> types = const [GAuthInput, _$GAuthInput];
  @override
  final String wireName = 'GAuthInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAuthInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAuthInput deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAuthInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAuthInput extends GAuthInput {
  @override
  final String? email;
  @override
  final String? password;

  factory _$GAuthInput([void Function(GAuthInputBuilder)? updates]) =>
      (new GAuthInputBuilder()..update(updates))._build();

  _$GAuthInput._({this.email, this.password}) : super._();

  @override
  GAuthInput rebuild(void Function(GAuthInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAuthInputBuilder toBuilder() => new GAuthInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAuthInput &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAuthInput')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class GAuthInputBuilder implements Builder<GAuthInput, GAuthInputBuilder> {
  _$GAuthInput? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GAuthInputBuilder();

  GAuthInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAuthInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAuthInput;
  }

  @override
  void update(void Function(GAuthInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAuthInput build() => _build();

  _$GAuthInput _build() {
    final _$result =
        _$v ?? new _$GAuthInput._(email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
