import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider untuk menyimpan index halaman onboarding
final pageIndexProvider = StateProvider<int>((ref) => 0);

/// Provider untuk PageController (otomatis dispose)
final pageControllerProvider = Provider<PageController>((ref) {
  final controller = PageController();
  ref.onDispose(() => controller.dispose());
  return controller;
});
