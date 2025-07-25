import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:umt_election/app/auth/view/login_view.dart';
import 'package:umt_election/app/auth/view/test.dart';

import '../startup/splash/view/splash_view.dart';
import '../startup/welcome/view/welcome_view.dart';


abstract class AppRoutes {
  static const splash = '/splash';
  static const welcome = '/welcome';
  static const login = '/login';
  static const test = '/test';

  static final routes = <GoRoute>[
    GoRoute(
      path: splash,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: welcome,
      builder: (context, state) => const WelcomeView(),
    ),
    GoRoute(
      path: login,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: test,
      builder: (context, state) => const TestPage(),
    ),
  ];
}
