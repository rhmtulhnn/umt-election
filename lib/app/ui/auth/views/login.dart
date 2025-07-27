import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:umt_election/app/shared/buttons.dart';
import 'package:umt_election/app/shared/colors.dart';
import 'package:umt_election/app/shared/textfield.dart';
import 'package:umt_election/app/ui/auth/providers/login_providers.dart';
import 'package:umt_election/app/ui/auth/views/register.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    final email = ref.watch(emailProvider);
    final password = ref.watch(passwordProvider);

    final error = ref.watch(loginErrorProvider);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
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

              Text(
                "Masuk",
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.primary,
                  fontFamily: 'SfProDisplay',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "Halo! Senang Bertemu Dengan Anda Lagi.",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.black,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'SfProDisplay',
                ),
              ),

              // Email TextField
              TextFieldWidget(
                label: 'Email',
                initialValue: email,
                errorText: error['email'],
                onChanged: (value) => ref.read(emailProvider.notifier).state = value,
              ),

              // Password TextField
              TextFieldWidget(
                label: 'Kata Sandi',
                initialValue: password,
                errorText: error['password'],
                isPassword: true,
                onChanged: (value) => ref.read(passwordProvider.notifier).state = value,
              ),

              Align(
                alignment: Alignment.topRight,
                child: RichText(
                  text: TextSpan(
                    text: 'Lupa Kata Sandi?',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w700,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => context.go('/resetPass'),
                  ),
                ),
              ),
              SizedBox(height: 20),

              Center(
                child: ElevatedButton(
                  style: AppButtons.stylePrimary,
                  onPressed: () {
                  // Tammbahkan route ke home


                    print("Email: $email");
                    print("Password: $password");
                  },
                  child: const Text('Masuk'),
                ),
              ),
              SizedBox(height: 20),

              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Tidak Punya Akun? ',
                    style: TextStyle(fontSize: 16, color: AppColors.black),
                    children: [
                      TextSpan(
                        text: 'Daftar Sekarang',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => context.go('/register'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
