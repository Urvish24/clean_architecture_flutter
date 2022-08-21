import 'package:clean_architecture_with_bloc/feature/number_trivia/domain/entities/number_trivia.dart';

class NumberTrviaModel extends NumberTrivia {
  NumberTrviaModel({
    required String text,
    required int number,
  }) : super(
          text: text,
          number: number,
        );

  factory NumberTrviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTrviaModel(text: json["text"], number: json["number"]);
  }

  Map<String, dynamic> toJson() {
    return {'text': text, 'number': number};
  }
}
