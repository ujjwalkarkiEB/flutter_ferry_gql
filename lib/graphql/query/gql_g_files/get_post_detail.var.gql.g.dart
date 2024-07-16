// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_post_detail.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetPostByIdVars> _$gGetPostByIdVarsSerializer =
    new _$GGetPostByIdVarsSerializer();

class _$GGetPostByIdVarsSerializer
    implements StructuredSerializer<GGetPostByIdVars> {
  @override
  final Iterable<Type> types = const [GGetPostByIdVars, _$GGetPostByIdVars];
  @override
  final String wireName = 'GGetPostByIdVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetPostByIdVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetPostByIdVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetPostByIdVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetPostByIdVars extends GGetPostByIdVars {
  @override
  final String id;

  factory _$GGetPostByIdVars(
          [void Function(GGetPostByIdVarsBuilder)? updates]) =>
      (new GGetPostByIdVarsBuilder()..update(updates))._build();

  _$GGetPostByIdVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GGetPostByIdVars', 'id');
  }

  @override
  GGetPostByIdVars rebuild(void Function(GGetPostByIdVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetPostByIdVarsBuilder toBuilder() =>
      new GGetPostByIdVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetPostByIdVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetPostByIdVars')..add('id', id))
        .toString();
  }
}

class GGetPostByIdVarsBuilder
    implements Builder<GGetPostByIdVars, GGetPostByIdVarsBuilder> {
  _$GGetPostByIdVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetPostByIdVarsBuilder();

  GGetPostByIdVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetPostByIdVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetPostByIdVars;
  }

  @override
  void update(void Function(GGetPostByIdVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetPostByIdVars build() => _build();

  _$GGetPostByIdVars _build() {
    final _$result = _$v ??
        new _$GGetPostByIdVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GGetPostByIdVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
