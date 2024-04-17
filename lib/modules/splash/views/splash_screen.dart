import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_skeleton/app/router.dart';
import 'package:flutter_skeleton/core/services/authentication_service.dart';
import 'package:flutter_skeleton/modules/splash/bloc/splash_bloc.dart';
import 'package:flutter_skeleton/modules/splash/bloc/splash_event.dart';
import 'package:flutter_skeleton/modules/splash/bloc/splash_state.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashBloc(context.read<AuthenticationService>())..add(InitializeApp()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is SplashScreenNavigatedToHome) {
            context.router.replace(HomeRoute());
          } else if (state is SplashScreenNavigatedToLogin) {
            context.router.replace(LoginRoute());
          }
        },
        child: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
