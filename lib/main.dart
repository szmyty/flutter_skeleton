import 'package:flutter/material.dart';
import 'package:flutter_skeleton/app/router.dart';
import 'package:flutter_skeleton/core/services/authentication_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter = AppRouter();
  final AuthenticationService authService = AuthenticationService();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
      title: 'Flutter Demo',
      // builder: (_, router) => FutureBuilder(
      //   future: authService.authenticate(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState != ConnectionState.done) {
      //       return const SplashScreen();
      //     }
      //     if (snapshot.hasData) {
      //       return HomeScreen(); // Navigate to home screen if authenticated
      //     }
      //     return const LoginScreen(); // Navigate to login screen if not authenticated
      //   },
      // ),
    );
  }
}
