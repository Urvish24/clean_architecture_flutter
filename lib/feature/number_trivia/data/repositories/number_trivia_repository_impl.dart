import 'package:clean_architecture_with_bloc/core/error/exeption.dart';
import 'package:clean_architecture_with_bloc/core/platfoarm/network_info.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/data/datasource/number_trivia_remote_data_source.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/data/datasource/number_trvia_local_data_source.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/data/models/number_trivia_model.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_with_bloc/core/error/failures.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class NumberTriviaRepositoryImpl extends NumberTriviaRepository {
  final NumberTrviaRemoteDataSource remoteDataSource;
  final NumberTrviaLocalDataSources localDataSources;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSources,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, NumberTrviaModel>> getConcreateNumberTrivia(
      int number) async {
    networkInfo.isConnected;
    if (await networkInfo.isConnected) {
      try {
        final remoteTrivia =
            await remoteDataSource.getConcreateNumberTrivia(number);
        localDataSources.catcheNumberTrvia(remoteTrivia);
        return Right(remoteTrivia);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localTrivia = await localDataSources.getLastTrvia();
        return Right(localTrivia);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, NumberTrviaModel>> getRandomNumberTrvia() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteTrivia = await remoteDataSource.getRendomNumberTrivia();
        localDataSources.catcheNumberTrvia(remoteTrivia);
        return Right(remoteTrivia);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localTrivia = await localDataSources.getLastTrvia();
        return Right(localTrivia);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
