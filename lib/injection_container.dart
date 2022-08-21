import 'package:clean_architecture_with_bloc/core/platfoarm/network_info.dart';
import 'package:clean_architecture_with_bloc/feature/login/data/datasource/login_remote_data_source.dart';
import 'package:clean_architecture_with_bloc/feature/login/data/repositories/login_repository_impl.dart';
import 'package:clean_architecture_with_bloc/feature/login/domain/repository/login_repository.dart';
import 'package:clean_architecture_with_bloc/feature/login/domain/usecases/post_login.dart';
import 'package:clean_architecture_with_bloc/feature/login/presentation/bloc/login_bloc.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/data/datasource/number_trivia_remote_data_source.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/data/datasource/number_trvia_local_data_source.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/data/repositories/number_trivia_repository_impl.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/domain/usecases/get_concreate_number_trivia.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/domain/usecases/get_rendom_number_trivia.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/presentation/bloc/bloc/number_trivia_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features -
  // bloc

  sl.registerFactory(() => NumberTriviaBloc(
        concreateNumberTrvia: sl(),
        rendomNumberTrivia: sl(),
      ));

  sl.registerFactory(() => LoginBloc(
        postLogin: sl(),
      ));

  sl.registerLazySingleton(() => GetConcreateNumberTrvia(sl()));
  sl.registerLazySingleton(() => GetRendomNumberTrivia(sl()));
  sl.registerLazySingleton(() => PostLogin(sl()));

  sl.registerLazySingleton<NumberTriviaRepository>(
      () => NumberTriviaRepositoryImpl(
            remoteDataSource: sl(),
            localDataSources: sl(),
            networkInfo: sl(),
          ));

  sl.registerLazySingleton<LoginRepository>(() => LoginRespositoryImpl(
        remoteDataSource: sl(),
        networkInfo: sl(),
      ));

// Remote Source
  sl.registerLazySingleton<NumberTrviaRemoteDataSource>(
      () => NumberTrviaRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<LoginRemoteDataSource>(
      () => LoginRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<NumberTrviaLocalDataSources>(
      () => NumberTriviaLocalDataSourceImpl(sharedPreferences: sl()));

  //! Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => Connectivity());
}
