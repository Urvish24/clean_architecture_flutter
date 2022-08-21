import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/login.dart';
import '../../domain/usecases/post_login.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';
const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid Input - The number must be a positive integer or zero.';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final PostLogin postLogin;

  LoginBloc({required this.postLogin}) : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      if (event is _postLoginEvent) {
        emit(state.copyWith(loading: true));
        final failOrLogin = await postLogin(
          Params(credencial: event.credencial),
        );
        emit(failOrLogin.fold(
            (failure) => state.copyWith(
                  message: _mapFailureToMessage(failure),
                  loading: false,
                ),
            (login) => state.copyWith(
                  message: login.message,
                  loading: false,
                  loaded: true,
                  login: login,
                )));
      }
    });
  }
}

String _mapFailureToMessage(Failure failure) {
  // Instead of a regular 'if (failure is ServerFailure)...'
  switch (failure.runtimeType) {
    case ServerFailure:
      return SERVER_FAILURE_MESSAGE;
    case CacheFailure:
      return CACHE_FAILURE_MESSAGE;
    default:
      return 'Unexpected Error';
  }
}
