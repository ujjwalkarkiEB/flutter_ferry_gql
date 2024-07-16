// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_loggedIn_user.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetLoggedInUserVars> _$gGetLoggedInUserVarsSerializer =
    new _$GGetLoggedInUserVarsSerializer();

class _$GGetLoggedInUserVarsSerializer
    implements StructuredSerializer<GGetLoggedInUserVars> {
  @override
  final Iterable<Type> types = const [
    GGetLoggedInUserVars,
    _$GGetLoggedInUserVars
  ];
  @override
  final String wireName = 'GGetLoggedInUserVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetLoggedInUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetLoggedInUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetLoggedInUserVarsBuilder().build();
  }
}

class _$GGetLoggedInUserVars extends GGetLoggedInUserVars {
  factory _$GGetLoggedInUserVars(
          [void Function(GGetLoggedInUserVarsBuilder)? updates]) =>
      (new GGetLoggedInUserVarsBuilder()..update(updates))._build();

  _$GGetLoggedInUserVars._() : super._();

  @override
  GGetLoggedInUserVars rebuild(
          void Function(GGetLoggedInUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLoggedInUserVarsBuilder toBuilder() =>
      new GGetLoggedInUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLoggedInUserVars;
  }

  @override
  int get hashCode {
    return 91066403;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GGetLoggedInUserVars').toString();
  }
}

class GGetLoggedInUserVarsBuilder
    implements Builder<GGetLoggedInUserVars, GGetLoggedInUserVarsBuilder> {
  _$GGetLoggedInUserVars? _$v;

  GGetLoggedInUserVarsBuilder();

  @override
  void replace(GGetLoggedInUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLoggedInUserVars;
  }

  @override
  void update(void Function(GGetLoggedInUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetLoggedInUserVars build() => _build();

  _$GGetLoggedInUserVars _build() {
    final _$result = _$v ?? new _$GGetLoggedInUserVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
