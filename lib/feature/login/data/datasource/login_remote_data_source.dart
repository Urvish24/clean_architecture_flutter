import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/error/exeption.dart';
import '../model/login_model.dart';

abstract class LoginRemoteDataSource {
  Future<LoginModel> postLogin(Map credencial);
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final http.Client client;

  LoginRemoteDataSourceImpl(this.client);

  @override
  Future<LoginModel> postLogin(Map credencial) async {
    var param = json.encode(credencial);
    print("Started");
    final response = await client.post(
      Uri.parse('https://node.inheritxdev.in/QDIS-Dev/v1/users/login'),
      headers: {'Content-Type': 'application/json'},
      body: param,
    );
    if (response.statusCode == 200) {
      print(response.body.toString());
      return LoginModel.fromJson(json.decode(response.body));
    } else {
      print(response.body.toString());
      print("Enedfed");
      throw ServerException();
    }
  }
}
