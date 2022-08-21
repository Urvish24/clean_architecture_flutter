import 'package:clean_architecture_with_bloc/feature/number_trivia/presentation/bloc/bloc/number_trivia_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumberTrviaPage extends StatefulWidget {
  @override
  State<NumberTrviaPage> createState() => _NumberTrviaPageState();
}

class _NumberTrviaPageState extends State<NumberTrviaPage> {
  @override
  void initState() {
    //context.read<NuberTrviaBloc>().add(GetRendomNumberTrviaEvent());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocListener<NumberTriviaBloc, NumberTriviaState>(
          listener: (_, state) {},
          child: Container(
            child: GestureDetector(
                onTap: () => context.read<NumberTriviaBloc>().add(
                    NumberTriviaEvent.getConcreateNumberTrvia(
                        numberString: "24")),
                child: BlocBuilder<NumberTriviaBloc, NumberTriviaState>(
                  builder: (context, state) {
                    return Text((state.loaded) ? state.trivia!.text : "Press");
                  },
                )),
          ),
        ),
      ),
    );
  }
}
