// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GcreatePostVars> _$gcreatePostVarsSerializer =
    new _$GcreatePostVarsSerializer();

class _$GcreatePostVarsSerializer
    implements StructuredSerializer<GcreatePostVars> {
  @override
  final Iterable<Type> types = const [GcreatePostVars, _$GcreatePostVars];
  @override
  final String wireName = 'GcreatePostVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GcreatePostVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.input;
    if (value != null) {
      result
        ..add('input')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GUserPostContent)));
    }
    return result;
  }

  @override
  GcreatePostVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreatePostVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUserPostContent))!
              as _i1.GUserPostContent);
          break;
      }
    }

    return result.build();
  }
}

class _$GcreatePostVars extends GcreatePostVars {
  @override
  final _i1.GUserPostContent? input;

  factory _$GcreatePostVars([void Function(GcreatePostVarsBuilder)? updates]) =>
      (new GcreatePostVarsBuilder()..update(updates))._build();

  _$GcreatePostVars._({this.input}) : super._();

  @override
  GcreatePostVars rebuild(void Function(GcreatePostVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreatePostVarsBuilder toBuilder() =>
      new GcreatePostVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreatePostVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'GcreatePostVars')
          ..add('input', input))
        .toString();
  }
}

class GcreatePostVarsBuilder
    implements Builder<GcreatePostVars, GcreatePostVarsBuilder> {
  _$GcreatePostVars? _$v;

  _i1.GUserPostContentBuilder? _input;
  _i1.GUserPostContentBuilder get input =>
      _$this._input ??= new _i1.GUserPostContentBuilder();
  set input(_i1.GUserPostContentBuilder? input) => _$this._input = input;

  GcreatePostVarsBuilder();

  GcreatePostVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreatePostVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreatePostVars;
  }

  @override
  void update(void Function(GcreatePostVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreatePostVars build() => _build();

  _$GcreatePostVars _build() {
    _$GcreatePostVars _$result;
    try {
      _$result = _$v ?? new _$GcreatePostVars._(input: _input?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        _input?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GcreatePostVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
