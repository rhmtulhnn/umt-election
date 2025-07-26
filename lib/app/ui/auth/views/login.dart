import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:umt_election/app/shared/buttons.dart';
import 'package:umt_election/app/shared/colors.dart';
import 'package:umt_election/app/shared/textfield.dart';
import 'package:umt_election/app/ui/auth/views/register.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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

              // Teks Selamat Datang
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                ],
              ),

              // Email Teks Field
              TextFieldWidget(label: 'Email', controller: emailController),

              // Kata Sandi Teks Field
              TextFieldWidget(
                label: 'Kata Sandi',
                controller: passwordController,
                isPassword: true,
              ),

              // Teks Lupa Kata Sandi
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
                    ..onTap = () => context.go('/resetPass')
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Button Masuk
              Center(
                child: ElevatedButton(
                  style: AppButtons.stylePrimary,
                  onPressed: () {},
                  child: const Text('Masuk'),
                ),
              ),

              SizedBox(height: 20),
              // Teks Tidak Punya Akun
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
