import 'package:flutter/material.dart';
import 'package:zainozoho/src/theme/color.dart'; //import kelas color
import 'package:zainozoho/src/components/inputtext.dart'; //import kelas textfield
import 'package:zainozoho/src/components/button.dart'; //import kelas button

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final textfield = KTextField(); //inisialisasi objek untuk kelas textfield
  final button = KButton();

  bool _tampilsandi = true; //inisialisasi variable tampilsandi

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Image.asset('assets/images/splash.png'), //Logo Peduly
          const SizedBox(height: 20),
          Text(
            'Masuk',
            style: TextStyle(
                color: KColorTheme.warnaHitam, fontSize: 40), //Text Masuk
          ),
          Text(
            'Untuk mengakses Zainzo People',
            style: TextStyle(
                color: KColorTheme
                    .warnaHitam), //Text Untuk mengakses Zainzo People
          ),
          const SizedBox(height: 20),
          textfield.kUsernameField(), //TextField Email
          const SizedBox(height: 20),
          textfield.kUserPasswordField(
            () => setState(
              () {
                _tampilsandi = !_tampilsandi; //setstate tampil sandi
              },
            ),
          ),
          button.kTextButton(
              'Lupa Password?', () => null), //TextButton lupa sandi
          const SizedBox(height: 100),
          button.kElevetedButton('Masuk', () => null), //Button Masuk
        ],
      ),
    );
  }
}
