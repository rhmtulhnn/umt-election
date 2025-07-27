import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:umt_election/app/shared/buttons.dart';
import 'package:umt_election/app/shared/colors.dart';
import 'package:umt_election/app/shared/textfield.dart';

// PROVIDERS
final resetEmailProvider = StateProvider<String>((ref) => '');

class ResetPassView extends ConsumerWidget {
  const ResetPassView({super.key});
  

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final resetEmail = ref.watch(resetEmailProvider);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar
            Center(
                child: Image.asset(
                  'assets/images/login.png',
                  width: size.width * 0.45,
                  height: size.height * 0.45,
                ),
              ),

            // Judul
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'Reset Kata Sandi',
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.primary,
                  fontFamily: 'SfProDisplay',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            Text(
              'Masukkan email akun anda dan kami akan mengirimkan tautan untuk mengatur ulang kata sandi.',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.black,
                fontFamily: 'SfProDisplay',
              ),
            ),

            const SizedBox(height: 24),

            // Email
            TextFieldWidget(
              label: 'Email',
              initialValue: resetEmail,
              onChanged: (val) => ref.read(resetEmailProvider.notifier).state = val,
            ),

            const SizedBox(height: 24),

            // Tombol Kirim
            Center(
              child: ElevatedButton(
                style: AppButtons.stylePrimary,
                onPressed: () {

                  context.go('/login');
                },
                child: const Text('Kirim Link Reset'),
              ),
            ),

            const SizedBox(height: 20),

            // Tautan kembali ke login
            Center(
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: AppColors.black,
                    fontFamily: 'SfProDisplay',
                    fontSize: 14,
                  ),
                  children: [
                    const TextSpan(text: 'Sudah ingat kata sandi? '),
                    TextSpan(
                      text: 'Masuk',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w700,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => context.go('/login'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
