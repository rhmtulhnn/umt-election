import 'package:flutter_riverpod/flutter_riverpod.dart';

final resetPasswordProvider = Provider((ref) => AuthService());

class AuthService {
  Future<void> resetPassword(String email) async {
    // Ganti bagian ini dengan logika API yang sebenarnya
    await Future.delayed(Duration(seconds: 2));
    print("Reset email sent to $email");
  }
}
