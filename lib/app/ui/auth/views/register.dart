import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:umt_election/app/shared/buttons.dart';
import 'package:umt_election/app/shared/colors.dart';
import 'package:umt_election/app/shared/textfield.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nimController = TextEditingController();
  final referralController = TextEditingController();
  bool isChecked = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nimController.dispose();
    referralController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Judul Page
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

              // Instruksi Register
              Text(
                'Silahkan lengkapi data berikut untuk menggunakan layanan kami',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.black,
                  fontFamily: 'SfProDisplay',
                ),
              ),

              // NIM Field
              TextFieldWidget(
                label: 'Nomor Induk Mahasiswa',
                controller: nimController,
              ),

              // Email Field
              TextFieldWidget(label: 'Email', controller: emailController),

              // Password Field
              TextFieldWidget(
                label: 'Kata Sandi',
                controller: passwordController,
                isPassword: true,
              ),

              // Password Field
              TextFieldWidget(
                label: 'Konfirmasi Kata Sandi',
                controller: passwordController,
                isPassword: true,
              ),

              // Kode Referral
              TextFieldWidget(
                label: 'Kode Referral',
                controller: referralController,
              ),

              // Term and Condition
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(5),
                    ),
                    value: isChecked,
                    activeColor: AppColors.primary,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked = newBool!;
                      });
                    },
                  ),

                  Flexible(
                    child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        style: const TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                          fontFamily: 'SfProDipslay',
                        ),
                        children: [
                          const TextSpan(text: "Saya setuju dengan "),
                          TextSpan(
                            text: "Syarat dan Ketentuan",
                            style: const TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w700,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                          const TextSpan(text: " dan "),
                          TextSpan(
                            text: "Kebijakan Privasi",
                            style: const TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w700,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Button Daftar
              Center(
                child: ElevatedButton(
                  style: AppButtons.stylePrimary,
                  onPressed: () => context.go('/login'),
                  child: const Text('Daftar'),
                ),
              ),

              SizedBox(height:15,),

              // Tekt Sudah Punya Akun
              Center(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: AppColors.black,
                      fontFamily: 'SfproDisplay',
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(text: 'Sudah Punya Akun? '),
                      TextSpan(
                        text: 'Masuk',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w700,
                        ),
                        recognizer: TapGestureRecognizer()
                        ..onTap = () => context.go('/login')
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
