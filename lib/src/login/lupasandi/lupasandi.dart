import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zainozoho/src/components/button.dart';
import 'package:zainozoho/src/components/inputtext.dart';
import 'package:zainozoho/src/components/textstyle/title.dart';
import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:zainozoho/src/login/login.dart';

class LupaSandi extends StatefulWidget {
  const LupaSandi({super.key});

  @override
  State<LupaSandi> createState() => _LupaSandiState();
}

class _LupaSandiState extends State<LupaSandi> {
  //inisialisasi objek dari kelas style untuk textstyle
  final style = KTextStyle();
  //inisialisasi objek dari kelas textformfield untuk membuat textformfield
  final input = KTextField();
  //inisialisasi objek controller untuk email input
  final emailcontroller = TextEditingController();
  //inisialisasi objek untuk ElevetedButton di kelas KButton
  final button = KButton();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const SizedBox(height: 100),
          //Stack image karna gambar image terlalu besar maka saya tumpuk dia dengan widget yang lain
          Stack(
            alignment: Alignment.center,
            children: [
              //untuk Image asset logo
              Image.asset(
                'assets/icons/Vector.png',
                scale: 2.4,
              )
            ],
          ),

          const SizedBox(height: 70),

          //Untuk teks buat password baru
          Text("Buat Password Baru",
              textAlign: TextAlign.center, style: style.midstyletext),

          const SizedBox(height: 50),
          //Untuk text form field email
          input.kUsernameField(controller: emailcontroller),
          const SizedBox(height: 20),

          //Button untuk kirim email reset password
          button.kElevetedButton(
            "Kirim email reset password",
            () {
              if (emailcontroller.text.isEmpty) {
                AnimatedSnackBar.material('Email tidak boleh kosong!',
                        borderRadius: BorderRadius.circular(10),
                        type: AnimatedSnackBarType.warning,
                        mobileSnackBarPosition: MobileSnackBarPosition.top)
                    .show(context);
              } else if (emailcontroller.text != "soho@email.com") {
                AnimatedSnackBar.material(
                        'Email tidak terdaftar di database, mohon periksa kembali!',
                        borderRadius: BorderRadius.circular(10),
                        type: AnimatedSnackBarType.warning,
                        mobileSnackBarPosition: MobileSnackBarPosition.top)
                    .show(context);
              } else if (emailcontroller.text == "soho@email.com") {
                AnimatedSnackBar.material(
                        'Kami telah mengirimkan email instruksi perubahan kata sandi anda, mohon check email anda',
                        borderRadius: BorderRadius.circular(20),
                        duration: const Duration(seconds: 7),
                        type: AnimatedSnackBarType.success,
                        mobileSnackBarPosition: MobileSnackBarPosition.top)
                    .show(context);
                Timer(const Duration(seconds: 2), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                });
              }
              // print(emailcontroller.text);
            },
          ),

          const SizedBox(height: 140),
          //Untuk teks buat deskripsi dibawah sendiri

          //Untuk widget text paling bawah
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                "Cek kotak spam jika Anda tidak menerima email untuk reset password di kotak masuk",
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: button.kTextButton("Kembali ke halaman login", () {
          Navigator.pop(context);
        }),
      ),
    );
  }
}
