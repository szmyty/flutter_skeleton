import 'package:auto_route/auto_route.dart';
import 'package:flutter_skeleton/modules/authentication/views/login_screen.dart';
import 'package:flutter_skeleton/modules/home/views/home_screen.dart';
import 'package:flutter_skeleton/modules/splash/views/splash_screen.dart';
import 'package:flutter_skeleton/modules/user_profile/views/user_profile_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
    @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: LoginRoute.page, path: '/login'),
    AutoRoute(page: HomeRoute.page, path: '/home'),
    AutoRoute(page: UserProfileRoute.page, path: '/profile')
      ];
}
