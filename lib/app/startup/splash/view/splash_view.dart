import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../routes/app_routes.dart';

final splashDelayProvider = FutureProvider<void>((ref) async {
  await Future.delayed(const Duration(seconds: 3));
});

class SplashView extends ConsumerWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(splashDelayProvider, (prev, next) {
      next.when(
        data: (_) => context.go(AppRoutes.welcome),
        loading: () {},
        error: (e, st) => debugPrint('Splash error: $e'),
      );
    });

    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/images/logo-app.png',
          width: size.width * 0.34,
          height: size.height * 0.34,
        ),
      ),
    );
  }
}
