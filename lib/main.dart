import 'package:flutter/material.dart';
import '../src/theme/color.dart'; //import kelas color
import 'package:zainozoho/src/splash/splash.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true, //menggunakan tema material 3
          canvasColor: Colors.transparent,
          primarySwatch:
              KColorTheme.warnaUtama), //warna diambil dari dari class color
      home: const SplashScreen(), //jendela awal buka aplikasi
    );
  }
}
