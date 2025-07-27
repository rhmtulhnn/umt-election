import 'package:flutter_riverpod/flutter_riverpod.dart';

final emailProvider = StateProvider<String>((ref) => '');
final passwordProvider = StateProvider<String>((ref) => '');
final confirmPasswordProvider = StateProvider<String>((ref) => '');
final nimProvider = StateProvider<String>((ref) => '');
final referralProvider = StateProvider<String>((ref) => '');
final agreeTermsProvider = StateProvider<bool>((ref) => false);

final registerErrorProvider =
    StateNotifierProvider<RegisterErrorNotifier, Map<String, String?>>(
      (ref) => RegisterErrorNotifier(),
    );

class RegisterErrorNotifier extends StateNotifier<Map<String, String?>> {
  RegisterErrorNotifier() : super({});

  bool validate({
    required String email,
    required String password,
    required String confirmPassword,
    required String nim,
    required String referral,
    required bool isAgreed,
  }) {
    final errors = <String, String?>{};

    if (email.isEmpty || !email.contains('@')) {
      errors['email'] = 'Email tidak valid';
    }

    if (password.length < 8) {
      errors['password'] = 'Password minimal 8 karakter';
    }

    if (confirmPassword != password) {
      errors['confirmPassword'] = 'Password tidak cocok';
    }

    if (nim.isEmpty) {
      errors['nim'] = 'NIM wajib diisi';
    }

    if (referral.isEmpty) {
      errors['referral'] = 'Referral wajib diisi';
    }

    if (!isAgreed) {
      errors['terms'] = 'Syarat & Ketentuan harus disetujui';
    }

    state = errors;
    return errors.isEmpty;
  }
}
