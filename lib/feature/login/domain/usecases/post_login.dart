import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/login.dart';
import '../repository/login_repository.dart';

class PostLogin extends UseCase<Login, Params> {
  final LoginRepository repository;

  PostLogin(this.repository);

  @override
  Future<Either<Failure, Login>> call(Params params) async {
    return await repository.postLogin(params.credencial);
  }
}

class Params extends Equatable {
  Map credencial;
  Params({
    required this.credencial,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
