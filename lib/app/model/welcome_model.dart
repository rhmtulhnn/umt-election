class WelcomeModel {
  final String image;
  final String title;
  final String subtitle;

  WelcomeModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

final List<WelcomeModel> welcomeData = [
  WelcomeModel(
    image: 'welcome-one.png',
    title: 'Mudah dan Terpecaya',
    subtitle: 'Nikmati kemudahan dan kerahasiaan\nmemberikan suara secara online. ',
  ),
  WelcomeModel(
    image: 'welcome-two.png',
    title: 'Keamanan Sistem',
    subtitle: 'Data Anda tersimpan terenkripsi,\nhanya Anda yang punya akses penuh.',
  ),
  WelcomeModel(
    image: 'welcome-three.png',
    title: 'Hasil yang Tepat',
    subtitle: 'Lihat hasil secara langsung serta\nnotifikasi saat rekapitulasi selesai.',
  ),
];
