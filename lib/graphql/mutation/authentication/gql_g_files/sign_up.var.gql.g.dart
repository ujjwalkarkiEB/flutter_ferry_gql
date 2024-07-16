// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSignUpUserVars> _$gSignUpUserVarsSerializer =
    new _$GSignUpUserVarsSerializer();

class _$GSignUpUserVarsSerializer
    implements StructuredSerializer<GSignUpUserVars> {
  @override
  final Iterable<Type> types = const [GSignUpUserVars, _$GSignUpUserVars];
  @override
  final String wireName = 'GSignUpUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSignUpUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.input;
    if (value != null) {
      result
        ..add('input')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GSingUpInput)));
    }
    return result;
  }

  @override
  GSignUpUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignUpUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GSingUpInput))!
              as _i1.GSingUpInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GSignUpUserVars extends GSignUpUserVars {
  @override
  final _i1.GSingUpInput? input;

  factory _$GSignUpUserVars([void Function(GSignUpUserVarsBuilder)? updates]) =>
      (new GSignUpUserVarsBuilder()..update(updates))._build();

  _$GSignUpUserVars._({this.input}) : super._();

  @override
  GSignUpUserVars rebuild(void Function(GSignUpUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignUpUserVarsBuilder toBuilder() =>
      new GSignUpUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignUpUserVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'GSignUpUserVars')
          ..add('input', input))
        .toString();
  }
}

class GSignUpUserVarsBuilder
    implements Builder<GSignUpUserVars, GSignUpUserVarsBuilder> {
  _$GSignUpUserVars? _$v;

  _i1.GSingUpInputBuilder? _input;
  _i1.GSingUpInputBuilder get input =>
      _$this._input ??= new _i1.GSingUpInputBuilder();
  set input(_i1.GSingUpInputBuilder? input) => _$this._input = input;

  GSignUpUserVarsBuilder();

  GSignUpUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignUpUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignUpUserVars;
  }

  @override
  void update(void Function(GSignUpUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignUpUserVars build() => _build();

  _$GSignUpUserVars _build() {
    _$GSignUpUserVars _$result;
    try {
      _$result = _$v ?? new _$GSignUpUserVars._(input: _input?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        _input?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSignUpUserVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
