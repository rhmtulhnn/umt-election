import 'package:go_router/go_router.dart';

import '../ui/startup/views/splash_view.dart';
import '../ui/startup/views/welcome_view.dart';

abstract class AppRoutes {
  static const splash = '/splash';
  static const welcome = '/welcome';

  static final routes = <GoRoute>[
    GoRoute(
      path: splash,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: welcome,
      builder: (context, state) => const WelcomeView(),
    ),
  ];
}
