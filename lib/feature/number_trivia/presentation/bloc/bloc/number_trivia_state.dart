part of 'number_trivia_bloc.dart';

@freezed
class NumberTriviaState with _$NumberTriviaState {
  const factory NumberTriviaState({
    NumberTrivia? trivia,
    String? message,
    required bool loading,
    required bool loaded,
  }) = _NumberTriviaState;

  factory NumberTriviaState.initial() => const NumberTriviaState(
        loading: false,
        loaded: false,
      );
}
