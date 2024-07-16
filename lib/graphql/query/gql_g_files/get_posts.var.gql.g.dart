// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_posts.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetUserPostsListVars> _$gGetUserPostsListVarsSerializer =
    new _$GGetUserPostsListVarsSerializer();

class _$GGetUserPostsListVarsSerializer
    implements StructuredSerializer<GGetUserPostsListVars> {
  @override
  final Iterable<Type> types = const [
    GGetUserPostsListVars,
    _$GGetUserPostsListVars
  ];
  @override
  final String wireName = 'GGetUserPostsListVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUserPostsListVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetUserPostsListVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetUserPostsListVarsBuilder().build();
  }
}

class _$GGetUserPostsListVars extends GGetUserPostsListVars {
  factory _$GGetUserPostsListVars(
          [void Function(GGetUserPostsListVarsBuilder)? updates]) =>
      (new GGetUserPostsListVarsBuilder()..update(updates))._build();

  _$GGetUserPostsListVars._() : super._();

  @override
  GGetUserPostsListVars rebuild(
          void Function(GGetUserPostsListVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserPostsListVarsBuilder toBuilder() =>
      new GGetUserPostsListVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserPostsListVars;
  }

  @override
  int get hashCode {
    return 223315877;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GGetUserPostsListVars').toString();
  }
}

class GGetUserPostsListVarsBuilder
    implements Builder<GGetUserPostsListVars, GGetUserPostsListVarsBuilder> {
  _$GGetUserPostsListVars? _$v;

  GGetUserPostsListVarsBuilder();

  @override
  void replace(GGetUserPostsListVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserPostsListVars;
  }

  @override
  void update(void Function(GGetUserPostsListVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetUserPostsListVars build() => _build();

  _$GGetUserPostsListVars _build() {
    final _$result = _$v ?? new _$GGetUserPostsListVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
