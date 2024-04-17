import 'dart:async';

import 'package:flutter_skeleton/core/models/user.dart';

class AuthenticationService {
  Future<User> authenticate() async {
    await Future.delayed(const Duration(seconds: 5));  // Simulates a network delay
    return const User(id: '1', name: 'Anonymous');  // Returns an anonymous user
  }
}
