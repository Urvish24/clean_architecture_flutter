import 'package:bloc/bloc.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/domain/usecases/get_concreate_number_trivia.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/domain/usecases/get_rendom_number_trivia.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failures.dart';
import '../../../domain/entities/number_trivia.dart';

part 'number_trivia_event.dart';
part 'number_trivia_state.dart';
part 'number_trivia_bloc.freezed.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';
const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid Input - The number must be a positive integer or zero.';

class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  final GetConcreateNumberTrvia concreateNumberTrvia;
  final GetRendomNumberTrivia rendomNumberTrivia;

  NumberTriviaBloc({
    required this.concreateNumberTrvia,
    required this.rendomNumberTrivia,
  }) : super(NumberTriviaState.initial()) {
    on<NumberTriviaEvent>((event, emit) async {
      if (event is _GetConcreateNumberTrviaEvent) {
        emit(state.copyWith(loading: true));
        final failureOrTrivia = await concreateNumberTrvia(Params(
          number: int.parse(event.numberString),
        ));
        emit(
          failureOrTrivia.fold(
              (failure) => state.copyWith(
                    message: _mapFailureToMessage(failure),
                    loading: false,
                  ),
              (trivia) => state.copyWith(
                    loading: false,
                    trivia: trivia,
                    loaded: true,
                  )),
        );
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
