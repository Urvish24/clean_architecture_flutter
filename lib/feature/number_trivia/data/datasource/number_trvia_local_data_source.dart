import 'dart:convert';

import 'package:clean_architecture_with_bloc/feature/number_trivia/data/models/number_trivia_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/error/exeption.dart';

abstract class NumberTrviaLocalDataSources {
  Future<NumberTrviaModel> getLastTrvia();
  Future<void> catcheNumberTrvia(NumberTrviaModel triviaToCatche);
}

const CACHED_NUMBER_TRIVIA = 'CACHED_NUMBER_TRIVIA';

class NumberTriviaLocalDataSourceImpl implements NumberTrviaLocalDataSources {
  SharedPreferences sharedPreferences;

  NumberTriviaLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> catcheNumberTrvia(NumberTrviaModel triviaToCatche) {
    //await SharedPreferences.getInstance();
    return sharedPreferences.setString(
        CACHED_NUMBER_TRIVIA, json.encode(triviaToCatche.toJson()));
  }

  @override
  Future<NumberTrviaModel> getLastTrvia() {
    final jsonString = sharedPreferences.getString(CACHED_NUMBER_TRIVIA);
    if (jsonString != null) {
      return Future.value(NumberTrviaModel.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }
}
