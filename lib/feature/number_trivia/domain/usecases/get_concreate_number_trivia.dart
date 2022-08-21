// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:clean_architecture_with_bloc/core/error/failures.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/domain/repositories/number_trivia_repository.dart';

import '../../../../core/usecases/usecase.dart';

class GetConcreateNumberTrvia extends UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreateNumberTrvia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(params) async {
    return await repository.getConcreateNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  int number;
  Params({
    required this.number,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
