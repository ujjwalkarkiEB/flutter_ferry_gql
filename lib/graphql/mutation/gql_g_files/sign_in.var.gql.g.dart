// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSignInUserVars> _$gSignInUserVarsSerializer =
    new _$GSignInUserVarsSerializer();

class _$GSignInUserVarsSerializer
    implements StructuredSerializer<GSignInUserVars> {
  @override
  final Iterable<Type> types = const [GSignInUserVars, _$GSignInUserVars];
  @override
  final String wireName = 'GSignInUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSignInUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.input;
    if (value != null) {
      result
        ..add('input')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GAuthInput)));
    }
    return result;
  }

  @override
  GSignInUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignInUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GAuthInput))!
              as _i1.GAuthInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GSignInUserVars extends GSignInUserVars {
  @override
  final _i1.GAuthInput? input;

  factory _$GSignInUserVars([void Function(GSignInUserVarsBuilder)? updates]) =>
      (new GSignInUserVarsBuilder()..update(updates))._build();

  _$GSignInUserVars._({this.input}) : super._();

  @override
  GSignInUserVars rebuild(void Function(GSignInUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignInUserVarsBuilder toBuilder() =>
      new GSignInUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignInUserVars && input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignInUserVars')
          ..add('input', input))
        .toString();
  }
}

class GSignInUserVarsBuilder
    implements Builder<GSignInUserVars, GSignInUserVarsBuilder> {
  _$GSignInUserVars? _$v;

  _i1.GAuthInputBuilder? _input;
  _i1.GAuthInputBuilder get input =>
      _$this._input ??= new _i1.GAuthInputBuilder();
  set input(_i1.GAuthInputBuilder? input) => _$this._input = input;

  GSignInUserVarsBuilder();

  GSignInUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignInUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignInUserVars;
  }

  @override
  void update(void Function(GSignInUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignInUserVars build() => _build();

  _$GSignInUserVars _build() {
    _$GSignInUserVars _$result;
    try {
      _$result = _$v ?? new _$GSignInUserVars._(input: _input?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        _input?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSignInUserVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
