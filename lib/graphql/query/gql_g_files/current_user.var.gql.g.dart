// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCurrentAuthenticatedUserDetailsVars>
    _$gGetCurrentAuthenticatedUserDetailsVarsSerializer =
    new _$GGetCurrentAuthenticatedUserDetailsVarsSerializer();

class _$GGetCurrentAuthenticatedUserDetailsVarsSerializer
    implements StructuredSerializer<GGetCurrentAuthenticatedUserDetailsVars> {
  @override
  final Iterable<Type> types = const [
    GGetCurrentAuthenticatedUserDetailsVars,
    _$GGetCurrentAuthenticatedUserDetailsVars
  ];
  @override
  final String wireName = 'GGetCurrentAuthenticatedUserDetailsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetCurrentAuthenticatedUserDetailsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetCurrentAuthenticatedUserDetailsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetCurrentAuthenticatedUserDetailsVarsBuilder().build();
  }
}

class _$GGetCurrentAuthenticatedUserDetailsVars
    extends GGetCurrentAuthenticatedUserDetailsVars {
  factory _$GGetCurrentAuthenticatedUserDetailsVars(
          [void Function(GGetCurrentAuthenticatedUserDetailsVarsBuilder)?
              updates]) =>
      (new GGetCurrentAuthenticatedUserDetailsVarsBuilder()..update(updates))
          ._build();

  _$GGetCurrentAuthenticatedUserDetailsVars._() : super._();

  @override
  GGetCurrentAuthenticatedUserDetailsVars rebuild(
          void Function(GGetCurrentAuthenticatedUserDetailsVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCurrentAuthenticatedUserDetailsVarsBuilder toBuilder() =>
      new GGetCurrentAuthenticatedUserDetailsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCurrentAuthenticatedUserDetailsVars;
  }

  @override
  int get hashCode {
    return 407046760;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(
            r'GGetCurrentAuthenticatedUserDetailsVars')
        .toString();
  }
}

class GGetCurrentAuthenticatedUserDetailsVarsBuilder
    implements
        Builder<GGetCurrentAuthenticatedUserDetailsVars,
            GGetCurrentAuthenticatedUserDetailsVarsBuilder> {
  _$GGetCurrentAuthenticatedUserDetailsVars? _$v;

  GGetCurrentAuthenticatedUserDetailsVarsBuilder();

  @override
  void replace(GGetCurrentAuthenticatedUserDetailsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCurrentAuthenticatedUserDetailsVars;
  }

  @override
  void update(
      void Function(GGetCurrentAuthenticatedUserDetailsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetCurrentAuthenticatedUserDetailsVars build() => _build();

  _$GGetCurrentAuthenticatedUserDetailsVars _build() {
    final _$result = _$v ?? new _$GGetCurrentAuthenticatedUserDetailsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
