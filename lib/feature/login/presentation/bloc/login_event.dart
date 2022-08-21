part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  factory LoginEvent.postLoginEvent({
    required Map credencial,
  }) = _postLoginEvent;
}
