import 'package:flutter/material.dart';

import 'colors.dart';

class AppButtons {
  static final ButtonStyle stylePrimary = ElevatedButton.styleFrom(
    minimumSize: const Size(300.8, 48.8),
    backgroundColor: AppColors.primary,
    foregroundColor: Colors.white,
    elevation: 2,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16.0),
      ),
    ),
  );
}