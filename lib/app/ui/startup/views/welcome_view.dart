import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/welcome_model.dart';
import '../../../shared/colors.dart';
import '../../../shared/fonts.dart';
import '../providers/welcome_provider.dart';
import '../widgets/welcome_item.dart';
import '../widgets/welcome_smooth.dart';

class WelcomeView extends ConsumerWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(pageControllerProvider);
    final pageCount = welcomeData.length;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // === PageView ===
          PageView.builder(
            controller: controller,
            itemCount: pageCount,
            onPageChanged: (index) {
              ref.read(pageIndexProvider.notifier).state = index;
            },
            itemBuilder: (_, index) {
              final item = welcomeData[index];
              return WelcomeItem(
                image: item.image,
                title: item.title,
                subtitle: item.subtitle,
              );
            },
          ),

          // === Skip button ===
          Positioned(
            top: 60.0,
            right: 28.0,
            child: GestureDetector(
              onTap: () => controller.jumpToPage(pageCount - 1),
              child: Text(
                'Lewati',
                style: AppFonts.regular(size: 14.2, color: AppColors.secondary),
              ),
            ),
          ),

          // === Footer: indicator / button ===
          WelcomeSmooth(controller: controller),
        ],
      ),
    );
  }
}
