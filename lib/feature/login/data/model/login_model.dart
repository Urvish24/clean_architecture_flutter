import '../../domain/entities/login.dart';

class LoginModel extends Login {
  LoginModel({
    required super.status,
    required super.message,
    required super.data,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      status: json["status"],
      message: json["message"],
      data: Data.fromJson(json["data"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      "data": data.toJson(),
    };
  }
}
