import 'package:flutter/material.dart';
import 'package:zainozoho/src/login/login.dart';
import 'package:intro_slider/intro_slider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      const ContentConfig(
        backgroundImageFit: BoxFit.contain,
        maxLineTextDescription: 5,
        description:
            "Akses lebih mhdah untuk mengelola semua kebutuhan administrasi HR Anda.",
        pathImage: "assets/icons/Vector.png",
        backgroundColor: Colors.white,
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        backgroundImageFit: BoxFit.contain,
        maxLineTextDescription: 5,
        description:
            "Anda dapat melakukan absen, mengajukan cuti, dan reimbursment, seta administrasi terkait lainnya",
        pathImage: "assets/images/splash-slide-two.png",
        backgroundColor: Colors.white,
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        backgroundImageFit: BoxFit.contain,
        maxLineTextDescription: 5,
        description:
            "Pastikan notifikasi aktid agar tidak melewatkan informasi penting dari kantor.",
        pathImage: "assets/images/splash-slide-three.png",
        backgroundColor: Colors.white,
      ),
    );
  }

  onDonePress({BuildContext? context}) {
    Navigator.pushReplacement(
      context!,
      MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      backgroundColorAllTabs: Colors.white,
      autoScrollInterval: const Duration(seconds: 2),
      isAutoScroll: true,
      isPauseAutoPlayOnTouch: true,
      isLoopAutoScroll: true,
      renderNextBtn: const Text("Lanjut"),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress(context: context),
    );
  }
}
