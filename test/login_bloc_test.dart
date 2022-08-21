import 'package:bloc_test/bloc_test.dart';
import 'package:clean_architecture_with_bloc/feature/login/domain/repository/login_repository.dart';
import 'package:clean_architecture_with_bloc/feature/login/domain/usecases/post_login.dart';
import 'package:clean_architecture_with_bloc/feature/login/presentation/bloc/login_bloc.dart';
import 'package:clean_architecture_with_bloc/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLoginRepo extends Mock implements PostLogin {}

void main() {
  late PostLogin mockLoginRepo;

  group('Login bloc', () {
    setUp(() {
      mockLoginRepo = MockLoginRepo();
    });
    group("Login", () {
      setUp(() {});
      blocTest<LoginBloc, LoginState>(
        "Login",
        build: () => LoginBloc(postLogin: mockLoginRepo),
        act: (bloc) => bloc.add(LoginEvent.postLoginEvent(
          credencial: {},
        )),
        expect: () => [const LoginState(loading: false, loaded: true)],
      );
    });
  });
}
