import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:umt_election/app/shared/buttons.dart';
import 'package:umt_election/app/shared/colors.dart';

class TermsAndConditionsView extends StatefulWidget {
  const TermsAndConditionsView({super.key});

  @override
  State<TermsAndConditionsView> createState() => _TermsAndConditionsViewState();
}

class _TermsAndConditionsViewState extends State<TermsAndConditionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              // Judul Halaman
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Syarat dan Ketentuan',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'SfProDisplay',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Diperbarui pada 26 Juli 2025',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'SfProDisplay',
                        // fontWeight: FontWeight.w700,
                      ),
                    ),

                    SizedBox(height: 20),

                    Text(
                      textAlign: TextAlign.justify,
                      'Dengan mendaftar di Aplikasi E-Voting UnitVote UMT, anda menyetujui bahwa akses hanya untuk pengguna terverifikasi dan bertanggung jawab atas akun. Membagikan informasi login dapat berakibat peblokiran akun tanpa pemberitahuan.',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'SfProDisplay',
                        // fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              
              SizedBox(height:20,),

              // Syarat Pengguna
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.start,
                      'Syarat Pengguna',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'SfProDisplay',
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    SizedBox(height:20,),

                    Text(
                      textAlign: TextAlign.justify,
                      'Pengguna wajib mematuhi semua aturan dan ketentuan dalam aplikasi. Pelanggaran seperti manupulasi data atau suara akan ditindak tegas dan dapat berujung pada penonaktifan akun sesuai kebijakan kampus yang berlaku.',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'SfProDisplay',
                        // fontWeight: FontWeight.w700,
                      ),
                    ),
                ],
              ),

              SizedBox(height:20,),

              // Hak Pengguna
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.start,
                      'Hak Pengguna Pengguna',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'SfProDisplay',
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    SizedBox(height:20,),

                    Text(
                      textAlign: TextAlign.justify,
                      'Pengguna berhak meminta salinan, pembaruan, atau penghapusan data pribadi sesuai dengan ketentuan UnitVote UMT. permintaan diproses maksimal 30 hari kerja dan kebijakan privasi serta perlindungan data tetap berlaku sepenuhnya.',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'SfProDisplay',
                        // fontWeight: FontWeight.w700,
                      ),
                    ),
                ],
              ),

              SizedBox(height:20,),

              // Button
              Center(
                child: ElevatedButton(
                  style: AppButtons.stylePrimary,
                  onPressed: () => context.go('/register'),
                  child: const Text('Setuju'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
