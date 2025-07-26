import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../shared/buttons.dart';
import '../../../shared/colors.dart';
import '../../../shared/fonts.dart';
import '../../../model/welcome_model.dart';
import '../providers/welcome_provider.dart';

class WelcomeSmooth extends ConsumerWidget {
  final PageController controller;

  const WelcomeSmooth({super.key, required this.controller});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final page = ref.watch(pageIndexProvider);
    final isLastPage = page == welcomeData.length - 1;

    return Positioned(
      bottom: isLastPage ? 40 : 60,
      left: isLastPage ? 40 : 0,
      right: isLastPage ? 40 : 0,
      child: isLastPage
          ? SizedBox(
              width: double.infinity,
              height: 55.0,
              child: ElevatedButton(
                onPressed: () => context.go('/login'),
                style: AppButtons.stylePrimary,
                child: Text(
                  'Yuk Mulai',
                  style: AppFonts.semiBold(size: 16.8, color: Colors.white),
                ),
              ),
            )
          : Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: welcomeData.length,
                effect: SlideEffect(
                  activeDotColor: AppColors.primary,
                  spacing: 8.0,
                  radius: 4.0,
                  dotWidth: 8.0,
                  dotHeight: 8.0,
                  dotColor: AppColors.secondary.withAlpha(51),
                ),
              ),
            ),
    );
  }
}
