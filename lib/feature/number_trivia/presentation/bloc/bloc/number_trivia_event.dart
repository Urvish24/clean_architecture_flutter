part of 'number_trivia_bloc.dart';

@freezed
class NumberTriviaEvent with _$NumberTriviaEvent {
  factory NumberTriviaEvent.getConcreateNumberTrvia({
    required String numberString,
  }) = _GetConcreateNumberTrviaEvent;

  factory NumberTriviaEvent.getRendomNumberTrvia() = _GetRendomNumberTrviaEvent;
}
