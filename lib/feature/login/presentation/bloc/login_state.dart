part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    String? message,
    required bool loading,
    required bool loaded,
    Login? login,
  }) = _LoginState;

  factory LoginState.initial() =>
      const LoginState(loading: false, loaded: false);
}
