import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_skeleton/app/router.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // For now, simply navigate to the HomeScreen
            context.router.replace(HomeRoute());
          },
          child: const Text('Log In'),
        ),
      ),
    );
  }
}