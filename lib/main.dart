import 'package:clean_architecture_with_bloc/feature/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_architecture_with_bloc/feature/number_trivia/presentation/pages/number_trivia_page.dart';
import 'package:clean_architecture_with_bloc/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'feature/login/presentation/bloc/login_bloc.dart';
import 'feature/number_trivia/presentation/bloc/bloc/number_trivia_bloc.dart';
import 'injection_container.dart' as di;
import 'injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late NumberTriviaRepository numberTriviaRepository;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<NumberTriviaBloc>()),
        BlocProvider(create: (context) => sl<LoginBloc>()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: WelcomePage(),
      ),
    );
  }
}
