import 'package:flutter/material.dart';

class AppColors {
  // --- BASIC COLORS ---
  static const Color black       = Color(0xFF000000);
  static const Color white       = Color(0xFFFFFFFF);
  static const Color transparent = Colors.transparent;

  // --- BRAND PRIMARY COLORS ---
  static const Color primary     = Color(0xFF6B509F);
  static const Color secondary   = Color(0xFF576875);
  static const Color tertiary    = Color(0xFF322846);
  static const Color quaternary  = Color(0xFF3F3F3F);

  // --- STATUS COLORS ---
  static const Color success = Colors.green;
  static const Color error   = Colors.red;
  static const Color warning = Colors.orange;
}

/// Koleksi gradient-gradient yang dipakai di app, disesuaikan dengan palette AppColors.
class AppGradients {
  /// Gradient dari primary ke secondary.
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [AppColors.primary, AppColors.secondary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Gradient lembut dari primary ke tertiary.
  static const LinearGradient roundedLight = LinearGradient(
    colors: [AppColors.primary, AppColors.tertiary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Gradient alternatif dari secondary ke quaternary.
  static const LinearGradient roundedAlt = LinearGradient(
    colors: [AppColors.secondary, AppColors.quaternary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

/// Helper extension untuk background adaptif berdasarkan theme.
extension ContextBackground on BuildContext {
  Color get adaptiveBackground {
    return Theme.of(this).brightness == Brightness.dark
        ? AppColors.black
        : AppColors.white;
  }
}
