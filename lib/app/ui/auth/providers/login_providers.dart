import 'package:flutter_riverpod/flutter_riverpod.dart';

final emailProvider = StateProvider<String>((ref) => '');
final passwordProvider = StateProvider<String>((ref) => '');

final loginErrorProvider = StateNotifierProvider<LoginErrorNotifier, Map<String, String?>>(
  (ref) => LoginErrorNotifier(),
);

class LoginErrorNotifier extends StateNotifier<Map<String, String?>> {
  LoginErrorNotifier() : super({});

  bool validate(String email, String password) {
    final errors = <String, String?>{};

    if (email.isEmpty || !email.contains('@')) {
      errors['email'] = 'Email tidak valid';
    }

    if (password.isEmpty) {
      errors['password'] = 'Password wajib diisi';
    }

    state = errors;
    return errors.isEmpty;
  }
}