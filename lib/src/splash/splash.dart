import 'package:flutter/material.dart';
// import 'package:zainozoho/src/components/textstyle/title.dart';
import 'package:zainozoho/src/login/login.dart';
// import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:flutter/foundation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<ContentConfig> listContentConfig = [];

  final introKey = GlobalKey<IntroductionScreenState>();

  void onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const LoginPage()),
    );
  }

  Widget buildImage(String assetName) {
    return Image.asset('assets/splash/$assetName');
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      initialPage: 0,
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: false,
      bodyPadding: const EdgeInsets.only(top: 80),
      dotsFlex: 1,

      pages: [
        PageViewModel(
          // title: "Selamat Datang di Zainzo People",
          titleWidget: const Text(
            "Selamat Datang di Zainzo People",
            style: TextStyle(
                fontSize: 20, fontFamily: 'Inter', fontWeight: FontWeight.bold),
          ),
          bodyWidget: const Text(
            "Akses lebih mudah untuk mengelolah semua kebutuhan administrasi HR Anda",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 16,
              fontFamily: 'Inter',
            ),
          ),
          image: Image.asset(
            'assets/icons/Vector.png',
            scale: 2.1,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: const Text(
            "Kelola Administrasi HR dimana saja",
            style: TextStyle(
                fontSize: 20, fontFamily: 'Inter', fontWeight: FontWeight.bold),
          ),
          bodyWidget: const Text(
            "Anda dapat melakukan absen, mengajukan cuti, dan reimbusrtment, serta administrasi terkait lainnya",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 16,
              fontFamily: 'Inter',
            ),
          ),
          image: buildImage('splash-satu.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: const Text(
            "Selalu update dengan info kantor",
            style: TextStyle(
                fontSize: 20, fontFamily: 'Inter', fontWeight: FontWeight.bold),
          ),
          bodyWidget: const Text(
            "Pastikan notifikasi aktif agar tidak melewatkan informasi penting dari kantor",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 16,
              fontFamily: 'Inter',
            ),
          ),
          image: buildImage('splash-dua.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Selesai",
          bodyWidget: const Text(
            "Tekan tombol selesai untuk masuk ke jendela login",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 16,
              fontFamily: 'Inter',
            ),
          ),
          image: Image.asset(
            'assets/splash/done.png',
            scale: 3,
          ),
          decoration: pageDecoration,
        )
      ],
      onDone: () => onIntroEnd(context),
      onSkip: () => onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Text('Kembali',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey)),

      skip: const Text('Skip',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.red)),
      next: const Text('Lanjut',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.red)),
      done: const Text('Selesai',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.red)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        activeColor: Colors.red,
        size: Size(10.0, 10.0),
        color: Colors.black26,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
