import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/routes/app_router.dart';

void main() => runApp(ProviderScope(child: Election()));

class Election extends ConsumerWidget {
  const Election({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'UMT Election',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
