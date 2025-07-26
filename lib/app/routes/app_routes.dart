import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:umt_election/app/ui/auth/views/login.dart';
import 'package:umt_election/app/ui/auth/views/register.dart';
import 'package:umt_election/app/ui/auth/views/reset.dart';

import '../ui/startup/views/splash_view.dart';
import '../ui/startup/views/welcome_view.dart';


abstract class AppRoutes {
  static const splash = '/splash';
  static const welcome = '/welcome';
  static const login = '/login';
  static const register = '/register';
  static const resetPass = '/resetPass';
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
      path: register,
      builder: (context, state) => const RegisterView(),
    ),
    GoRoute(
      path: resetPass,
      builder: (context, state) => const ResetPassView(),
    ),
  ];
}
