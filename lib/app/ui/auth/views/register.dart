import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:umt_election/app/shared/buttons.dart';
import 'package:umt_election/app/shared/colors.dart';
import 'package:umt_election/app/shared/textfield.dart';
import 'package:umt_election/app/ui/auth/providers/register_provider.dart';

class RegisterView extends ConsumerWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = ref.watch(emailProvider);
    final password = ref.watch(passwordProvider);
    final confirmPassword = ref.watch(confirmPasswordProvider);
    final nim = ref.watch(nimProvider);
    final referral = ref.watch(referralProvider);
    final isChecked = ref.watch(agreeTermsProvider);

    final error = ref.watch(registerErrorProvider);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'Registrasi Akun',
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.primary,
                  fontFamily: 'SfProDisplay',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            Text(
              'Silahkan lengkapi data berikut untuk menggunakan layanan kami',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.black,
                fontFamily: 'SfProDisplay',
              ),
            ),

            // NIM
            TextFieldWidget(
              label: 'Nomor Induk Mahasiswa',
              initialValue: nim,
              errorText: error['nim'],
              onChanged: (val) => ref.read(nimProvider.notifier).state = val,
            ),

            // Email
            TextFieldWidget(
              label: 'Email',
              initialValue: email,
              errorText: error['email'],
              onChanged: (val) => ref.read(emailProvider.notifier).state = val,
            ),

            // Password
            TextFieldWidget(
              label: 'Kata Sandi',
              isPassword: true,
              initialValue: password,
              errorText: error['password'],
              onChanged: (val) =>
                  ref.read(passwordProvider.notifier).state = val,
            ),

            // Konfirmasi Password
            TextFieldWidget(
              label: 'Konfirmasi Kata Sandi',
              isPassword: true,
              initialValue: confirmPassword,
              errorText: error['confirmPassword'],
              onChanged: (val) =>
                  ref.read(confirmPasswordProvider.notifier).state = val,
            ),

            // Kode Referral
            TextFieldWidget(
              label: 'Kode Referral',
              initialValue: referral,
              errorText: error['referral'],
              onChanged: (val) =>
                  ref.read(referralProvider.notifier).state = val,
            ),

            // Term & Condition
            Row(
              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  value: isChecked,
                  activeColor: AppColors.primary,
                  onChanged: (newVal) =>
                      ref.read(agreeTermsProvider.notifier).state =
                          newVal ?? false,
                ),
                Flexible(
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      style: const TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontFamily: 'SfProDisplay',
                      ),
                      children: [
                        const TextSpan(text: "Saya setuju dengan "),
                        TextSpan(
                          text: "Syarat dan Ketentuan",
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w700,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => context.go('/termCondition'),
                        ),
                        const TextSpan(text: " dan "),
                        TextSpan(
                          text: "Kebijakan Privasi",
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w700,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => context.go('/termCondition'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Center(
              child: ElevatedButton(
                style: AppButtons.stylePrimary,
                onPressed: () {
                  final isValid = ref
                      .read(registerErrorProvider.notifier)
                      .validate(
                        email: email,
                        password: password,
                        confirmPassword: confirmPassword,
                        nim: nim,
                        referral: referral,
                        isAgreed: isChecked,
                      );

                  

                  if (isValid) {
                    context.go('/login');
                  }
                },
                child: const Text('Daftar'),
              ),
            ),

            const SizedBox(height: 15),

            Center(
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: AppColors.black,
                    fontFamily: 'SfProDisplay',
                    fontSize: 14,
                  ),
                  children: [
                    const TextSpan(text: 'Sudah Punya Akun? '),
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
