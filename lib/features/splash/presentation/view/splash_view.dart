import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocha_vista/core/utlis/colors.dart';
import 'package:mocha_vista/core/utlis/values.dart';
import 'package:mocha_vista/features/auth/presentation/bloc/auth_bloc.dart';

class SplashPageWrapper extends StatelessWidget {
  const SplashPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc()..add(CheckLoginStatusEvent()),
      child: SplashPage(),
    );
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is Authenticated) {
          Navigator.pushReplacementNamed(context, '/home');
        } else if (state is UnAuthenticated) {
          Navigator.pushReplacementNamed(context, '/signIn');
        }
      },
      child: Scaffold(
        backgroundColor: ColorManager.primary,
        body: Center(
          child: Image.asset('asset/images/logo.png', fit: BoxFit.cover),
        ),
      ),
    );
  }
}
