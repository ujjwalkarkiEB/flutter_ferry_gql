// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_signed_user.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetLoggedInUserDataVars> _$gGetLoggedInUserDataVarsSerializer =
    new _$GGetLoggedInUserDataVarsSerializer();

class _$GGetLoggedInUserDataVarsSerializer
    implements StructuredSerializer<GGetLoggedInUserDataVars> {
  @override
  final Iterable<Type> types = const [
    GGetLoggedInUserDataVars,
    _$GGetLoggedInUserDataVars
  ];
  @override
  final String wireName = 'GGetLoggedInUserDataVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetLoggedInUserDataVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetLoggedInUserDataVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetLoggedInUserDataVarsBuilder().build();
  }
}

class _$GGetLoggedInUserDataVars extends GGetLoggedInUserDataVars {
  factory _$GGetLoggedInUserDataVars(
          [void Function(GGetLoggedInUserDataVarsBuilder)? updates]) =>
      (new GGetLoggedInUserDataVarsBuilder()..update(updates))._build();

  _$GGetLoggedInUserDataVars._() : super._();

  @override
  GGetLoggedInUserDataVars rebuild(
          void Function(GGetLoggedInUserDataVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLoggedInUserDataVarsBuilder toBuilder() =>
      new GGetLoggedInUserDataVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLoggedInUserDataVars;
  }

  @override
  int get hashCode {
    return 40151114;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GGetLoggedInUserDataVars').toString();
  }
}

class GGetLoggedInUserDataVarsBuilder
    implements
        Builder<GGetLoggedInUserDataVars, GGetLoggedInUserDataVarsBuilder> {
  _$GGetLoggedInUserDataVars? _$v;

  GGetLoggedInUserDataVarsBuilder();

  @override
  void replace(GGetLoggedInUserDataVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLoggedInUserDataVars;
  }

  @override
  void update(void Function(GGetLoggedInUserDataVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetLoggedInUserDataVars build() => _build();

  _$GGetLoggedInUserDataVars _build() {
    final _$result = _$v ?? new _$GGetLoggedInUserDataVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
