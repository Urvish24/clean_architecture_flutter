import 'package:clean_architecture_with_bloc/core/usecases/usecase.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../repositories/number_trivia_repository.dart';

class GetRendomNumberTrivia extends UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRendomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrvia();
  }
}
