// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserPostContent> _$gUserPostContentSerializer =
    new _$GUserPostContentSerializer();
Serializer<GSingUpInput> _$gSingUpInputSerializer =
    new _$GSingUpInputSerializer();
Serializer<GLoginInput> _$gLoginInputSerializer = new _$GLoginInputSerializer();

class _$GUserPostContentSerializer
    implements StructuredSerializer<GUserPostContent> {
  @override
  final Iterable<Type> types = const [GUserPostContent, _$GUserPostContent];
  @override
  final String wireName = 'GUserPostContent';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserPostContent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserPostContent deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserPostContentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSingUpInputSerializer implements StructuredSerializer<GSingUpInput> {
  @override
  final Iterable<Type> types = const [GSingUpInput, _$GSingUpInput];
  @override
  final String wireName = 'GSingUpInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSingUpInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userName',
      serializers.serialize(object.userName,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'repeatPassword',
      serializers.serialize(object.repeatPassword,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSingUpInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSingUpInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'repeatPassword':
          result.repeatPassword = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginInputSerializer implements StructuredSerializer<GLoginInput> {
  @override
  final Iterable<Type> types = const [GLoginInput, _$GLoginInput];
  @override
  final String wireName = 'GLoginInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLoginInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLoginInput deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserPostContent extends GUserPostContent {
  @override
  final String title;
  @override
  final String? description;

  factory _$GUserPostContent(
          [void Function(GUserPostContentBuilder)? updates]) =>
      (new GUserPostContentBuilder()..update(updates))._build();

  _$GUserPostContent._({required this.title, this.description}) : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'GUserPostContent', 'title');
  }

  @override
  GUserPostContent rebuild(void Function(GUserPostContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserPostContentBuilder toBuilder() =>
      new GUserPostContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserPostContent &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserPostContent')
          ..add('title', title)
          ..add('description', description))
        .toString();
  }
}

class GUserPostContentBuilder
    implements Builder<GUserPostContent, GUserPostContentBuilder> {
  _$GUserPostContent? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GUserPostContentBuilder();

  GUserPostContentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserPostContent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserPostContent;
  }

  @override
  void update(void Function(GUserPostContentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserPostContent build() => _build();

  _$GUserPostContent _build() {
    final _$result = _$v ??
        new _$GUserPostContent._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GUserPostContent', 'title'),
            description: description);
    replace(_$result);
    return _$result;
  }
}

class _$GSingUpInput extends GSingUpInput {
  @override
  final String userName;
  @override
  final String email;
  @override
  final String password;
  @override
  final String repeatPassword;

  factory _$GSingUpInput([void Function(GSingUpInputBuilder)? updates]) =>
      (new GSingUpInputBuilder()..update(updates))._build();

  _$GSingUpInput._(
      {required this.userName,
      required this.email,
      required this.password,
      required this.repeatPassword})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'GSingUpInput', 'userName');
    BuiltValueNullFieldError.checkNotNull(email, r'GSingUpInput', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'GSingUpInput', 'password');
    BuiltValueNullFieldError.checkNotNull(
        repeatPassword, r'GSingUpInput', 'repeatPassword');
  }

  @override
  GSingUpInput rebuild(void Function(GSingUpInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSingUpInputBuilder toBuilder() => new GSingUpInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSingUpInput &&
        userName == other.userName &&
        email == other.email &&
        password == other.password &&
        repeatPassword == other.repeatPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, repeatPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSingUpInput')
          ..add('userName', userName)
          ..add('email', email)
          ..add('password', password)
          ..add('repeatPassword', repeatPassword))
        .toString();
  }
}

class GSingUpInputBuilder
    implements Builder<GSingUpInput, GSingUpInputBuilder> {
  _$GSingUpInput? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _repeatPassword;
  String? get repeatPassword => _$this._repeatPassword;
  set repeatPassword(String? repeatPassword) =>
      _$this._repeatPassword = repeatPassword;

  GSingUpInputBuilder();

  GSingUpInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _email = $v.email;
      _password = $v.password;
      _repeatPassword = $v.repeatPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSingUpInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSingUpInput;
  }

  @override
  void update(void Function(GSingUpInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSingUpInput build() => _build();

  _$GSingUpInput _build() {
    final _$result = _$v ??
        new _$GSingUpInput._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'GSingUpInput', 'userName'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GSingUpInput', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'GSingUpInput', 'password'),
            repeatPassword: BuiltValueNullFieldError.checkNotNull(
                repeatPassword, r'GSingUpInput', 'repeatPassword'));
    replace(_$result);
    return _$result;
  }
}

class _$GLoginInput extends GLoginInput {
  @override
  final String email;
  @override
  final String password;

  factory _$GLoginInput([void Function(GLoginInputBuilder)? updates]) =>
      (new GLoginInputBuilder()..update(updates))._build();

  _$GLoginInput._({required this.email, required this.password}) : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'GLoginInput', 'email');
    BuiltValueNullFieldError.checkNotNull(password, r'GLoginInput', 'password');
  }

  @override
  GLoginInput rebuild(void Function(GLoginInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginInputBuilder toBuilder() => new GLoginInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginInput &&
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
    return (newBuiltValueToStringHelper(r'GLoginInput')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class GLoginInputBuilder implements Builder<GLoginInput, GLoginInputBuilder> {
  _$GLoginInput? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GLoginInputBuilder();

  GLoginInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginInput;
  }

  @override
  void update(void Function(GLoginInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginInput build() => _build();

  _$GLoginInput _build() {
    final _$result = _$v ??
        new _$GLoginInput._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GLoginInput', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'GLoginInput', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
