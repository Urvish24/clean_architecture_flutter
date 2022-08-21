import 'package:dartz/dartz.dart';

import '../../../../core/error/exeption.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/platfoarm/network_info.dart';
import '../../domain/repository/login_repository.dart';
import '../datasource/login_remote_data_source.dart';
import '../model/login_model.dart';

class LoginRespositoryImpl extends LoginRepository {
  final LoginRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  LoginRespositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, LoginModel>> postLogin(Map credencial) async {
    networkInfo.isConnected;
    if (await networkInfo.isConnected) {
      try {
        final remoteLogin = await remoteDataSource.postLogin(credencial);
        return Right(remoteLogin);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }
}
