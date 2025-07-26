import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:umt_election/app/shared/buttons.dart';
import 'package:umt_election/app/shared/colors.dart';
import 'package:umt_election/app/shared/leading_button.dart';
import 'package:umt_election/app/shared/textfield.dart';

class ResetPassView extends StatefulWidget {
  const ResetPassView({super.key});

  @override
  State<ResetPassView> createState() => _ResetPassViewState();
}

class _ResetPassViewState extends State<ResetPassView> {
  final emailController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Leading Button
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: LeadingButton(onPressed: () => context.go('/login')),
              ),

              SizedBox(height: 15),

              // Gambar
              Center(
                child: Image.asset(
                  'assets/images/login.png',
                  width: size.width * 0.45,
                  height: size.height * 0.45,
                ),
              ),

              // Judul Halaman
              Text(
                "Reset Kata Sandi",
                style: TextStyle(
                  color: AppColors.primary,
                  fontFamily: 'SfProDisplay',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),

              // Instruksi
              Text(
                "Masukan alamat email untuk mengatur ulang kata sandi anda",
                style: TextStyle(
                  color: AppColors.black,
                  fontFamily: 'SfProDisplay',
                  fontSize: 16,
                ),
              ),

              // Email Field
              TextFieldWidget(label: 'Email', controller: emailController),

              SizedBox(height:20,),

              // Button
              Center(
                child: ElevatedButton(
                  style: AppButtons.stylePrimary,
                  onPressed: () => context.go('/login'),
                  child: const Text('Reset Kata Sandi'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
