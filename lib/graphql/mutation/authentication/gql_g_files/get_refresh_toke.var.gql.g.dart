// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_refresh_toke.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRefreshTokenVars> _$gRefreshTokenVarsSerializer =
    new _$GRefreshTokenVarsSerializer();

class _$GRefreshTokenVarsSerializer
    implements StructuredSerializer<GRefreshTokenVars> {
  @override
  final Iterable<Type> types = const [GRefreshTokenVars, _$GRefreshTokenVars];
  @override
  final String wireName = 'GRefreshTokenVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRefreshTokenVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'refreshToken',
      serializers.serialize(object.refreshToken,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRefreshTokenVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRefreshTokenVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'refreshToken':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRefreshTokenVars extends GRefreshTokenVars {
  @override
  final String refreshToken;

  factory _$GRefreshTokenVars(
          [void Function(GRefreshTokenVarsBuilder)? updates]) =>
      (new GRefreshTokenVarsBuilder()..update(updates))._build();

  _$GRefreshTokenVars._({required this.refreshToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'GRefreshTokenVars', 'refreshToken');
  }

  @override
  GRefreshTokenVars rebuild(void Function(GRefreshTokenVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRefreshTokenVarsBuilder toBuilder() =>
      new GRefreshTokenVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRefreshTokenVars && refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRefreshTokenVars')
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class GRefreshTokenVarsBuilder
    implements Builder<GRefreshTokenVars, GRefreshTokenVarsBuilder> {
  _$GRefreshTokenVars? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  GRefreshTokenVarsBuilder();

  GRefreshTokenVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRefreshTokenVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRefreshTokenVars;
  }

  @override
  void update(void Function(GRefreshTokenVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRefreshTokenVars build() => _build();

  _$GRefreshTokenVars _build() {
    final _$result = _$v ??
        new _$GRefreshTokenVars._(
            refreshToken: BuiltValueNullFieldError.checkNotNull(
                refreshToken, r'GRefreshTokenVars', 'refreshToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
