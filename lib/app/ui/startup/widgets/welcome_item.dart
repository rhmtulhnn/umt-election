import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/colors.dart';
import '../../../shared/fonts.dart';

class WelcomeItem extends ConsumerWidget {
  final String image;
  final String title;
  final String subtitle;

  const WelcomeItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 106.0, horizontal: 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Gambar: 80% lebar layar
            Image.asset(
              'assets/images/$image',
              width: size.width * 0.8,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 40.0),

            // Judul
            Text(
              title,
              style: AppFonts.bold(size: 22.0, color: AppColors.primary),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 22.8),

            // Subtitle
            Text(
              subtitle,
              style: AppFonts.regular(
                size: 14.2,
                color: AppColors.secondary,
              ).copyWith(height: 1.68),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
