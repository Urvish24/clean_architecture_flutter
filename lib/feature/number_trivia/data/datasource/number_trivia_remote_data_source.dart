import 'dart:convert';

import 'package:clean_architecture_with_bloc/core/error/exeption.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/data/models/number_trivia_model.dart';
import 'package:http/http.dart' as http;

abstract class NumberTrviaRemoteDataSource {
  Future<NumberTrviaModel> getConcreateNumberTrivia(int number);
  Future<NumberTrviaModel> getRendomNumberTrivia();
}

class NumberTrviaRemoteDataSourceImpl implements NumberTrviaRemoteDataSource {
  final http.Client client;

  NumberTrviaRemoteDataSourceImpl(this.client);

  @override
  Future<NumberTrviaModel> getConcreateNumberTrivia(int number) async {
    final response = await client.get(
      Uri.parse('http://numbersapi.com/$number'),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      return NumberTrviaModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }

  @override
  Future<NumberTrviaModel> getRendomNumberTrivia() async {
    final response = await client.get(
      Uri.http('http://numbersapi.com/random', ''),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return NumberTrviaModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
