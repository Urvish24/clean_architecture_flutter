// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  Map<dynamic, dynamic> get credencial => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<dynamic, dynamic> credencial) postLoginEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<dynamic, dynamic> credencial)? postLoginEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<dynamic, dynamic> credencial)? postLoginEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_postLoginEvent value) postLoginEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_postLoginEvent value)? postLoginEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_postLoginEvent value)? postLoginEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
  $Res call({Map<dynamic, dynamic> credencial});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;

  @override
  $Res call({
    Object? credencial = freezed,
  }) {
    return _then(_value.copyWith(
      credencial: credencial == freezed
          ? _value.credencial
          : credencial // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$$_postLoginEventCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$_postLoginEventCopyWith(
          _$_postLoginEvent value, $Res Function(_$_postLoginEvent) then) =
      __$$_postLoginEventCopyWithImpl<$Res>;
  @override
  $Res call({Map<dynamic, dynamic> credencial});
}

/// @nodoc
class __$$_postLoginEventCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_postLoginEventCopyWith<$Res> {
  __$$_postLoginEventCopyWithImpl(
      _$_postLoginEvent _value, $Res Function(_$_postLoginEvent) _then)
      : super(_value, (v) => _then(v as _$_postLoginEvent));

  @override
  _$_postLoginEvent get _value => super._value as _$_postLoginEvent;

  @override
  $Res call({
    Object? credencial = freezed,
  }) {
    return _then(_$_postLoginEvent(
      credencial: credencial == freezed
          ? _value._credencial
          : credencial // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc

class _$_postLoginEvent implements _postLoginEvent {
  _$_postLoginEvent({required final Map<dynamic, dynamic> credencial})
      : _credencial = credencial;

  final Map<dynamic, dynamic> _credencial;
  @override
  Map<dynamic, dynamic> get credencial {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_credencial);
  }

  @override
  String toString() {
    return 'LoginEvent.postLoginEvent(credencial: $credencial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_postLoginEvent &&
            const DeepCollectionEquality()
                .equals(other._credencial, _credencial));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_credencial));

  @JsonKey(ignore: true)
  @override
  _$$_postLoginEventCopyWith<_$_postLoginEvent> get copyWith =>
      __$$_postLoginEventCopyWithImpl<_$_postLoginEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<dynamic, dynamic> credencial) postLoginEvent,
  }) {
    return postLoginEvent(credencial);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<dynamic, dynamic> credencial)? postLoginEvent,
  }) {
    return postLoginEvent?.call(credencial);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<dynamic, dynamic> credencial)? postLoginEvent,
    required TResult orElse(),
  }) {
    if (postLoginEvent != null) {
      return postLoginEvent(credencial);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_postLoginEvent value) postLoginEvent,
  }) {
    return postLoginEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_postLoginEvent value)? postLoginEvent,
  }) {
    return postLoginEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_postLoginEvent value)? postLoginEvent,
    required TResult orElse(),
  }) {
    if (postLoginEvent != null) {
      return postLoginEvent(this);
    }
    return orElse();
  }
}

abstract class _postLoginEvent implements LoginEvent {
  factory _postLoginEvent({required final Map<dynamic, dynamic> credencial}) =
      _$_postLoginEvent;

  @override
  Map<dynamic, dynamic> get credencial;
  @override
  @JsonKey(ignore: true)
  _$$_postLoginEventCopyWith<_$_postLoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  String? get message => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get loaded => throw _privateConstructorUsedError;
  Login? get login => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({String? message, bool loading, bool loaded, Login? login});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? loading = freezed,
    Object? loaded = freezed,
    Object? login = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loaded: loaded == freezed
          ? _value.loaded
          : loaded // ignore: cast_nullable_to_non_nullable
              as bool,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as Login?,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  $Res call({String? message, bool loading, bool loaded, Login? login});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, (v) => _then(v as _$_LoginState));

  @override
  _$_LoginState get _value => super._value as _$_LoginState;

  @override
  $Res call({
    Object? message = freezed,
    Object? loading = freezed,
    Object? loaded = freezed,
    Object? login = freezed,
  }) {
    return _then(_$_LoginState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loaded: loaded == freezed
          ? _value.loaded
          : loaded // ignore: cast_nullable_to_non_nullable
              as bool,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as Login?,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.message, required this.loading, required this.loaded, this.login});

  @override
  final String? message;
  @override
  final bool loading;
  @override
  final bool loaded;
  @override
  final Login? login;

  @override
  String toString() {
    return 'LoginState(message: $message, loading: $loading, loaded: $loaded, login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.loaded, loaded) &&
            const DeepCollectionEquality().equals(other.login, login));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(loaded),
      const DeepCollectionEquality().hash(login));

  @JsonKey(ignore: true)
  @override
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final String? message,
      required final bool loading,
      required final bool loaded,
      final Login? login}) = _$_LoginState;

  @override
  String? get message;
  @override
  bool get loading;
  @override
  bool get loaded;
  @override
  Login? get login;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
