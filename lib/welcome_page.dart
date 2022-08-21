import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constants/strings.dart';
import 'feature/login/presentation/bloc/login_bloc.dart';
import 'feature/login/presentation/widgets/gradientButton.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    Map map = {
      "email": "jinalvendor@yopmail.com",
      "password": "Test@123",
      "user_type": ["7"],
      "fcm_token": "string",
      "platform_os": 1
    };

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              width: 150,
              color: grayLight,
            ),
            Container(
              height: height(context) * 0.35,
              width: width(context),
              color: grayLight,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Hello", style: figtreeBold(fSize: 30)),
                  const SizedBox(height: 20),
                  Text(
                    "Welcome to Sales Top A Platform To Manage Real Estate",
                    style: figtreeMedium(fSize: 17),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                return GradiantButton(
                  onTap: () =>
                      context.read<LoginBloc>().add(LoginEvent.postLoginEvent(
                            credencial: map,
                          )),
                  isLoading: state.loading,
                  title: (state.loaded)
                      ? state.login!.message.toString()
                      : "Login",
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
