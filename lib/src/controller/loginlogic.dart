import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../mainpage/mainpage.dart'; //import dari kelas mainpage

//kelas untuk membuat logika login
class LogicMasuk {
  //Fungsi untuk logika pada login dan shared preferences
  void logicmasuk(
      {required BuildContext? contexts,
      required TextEditingController email,
      required TextEditingController password,
      required String? emaildummy,
      required String? passworddummy}) {
    // jika email dan password benar dengan email dummy dan password dummy, maka
    // akan masuk ke window main yang ada di kelas mainpages
    if (email.text == emaildummy && password.text == passworddummy) {
      Navigator.pushReplacement(
        contexts!,
        MaterialPageRoute(
          builder: (contexts) => const MainPage(),
        ),
      );
    } else if (email.text != emaildummy) {
      showCupertinoModalPopup(
        context: contexts!,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: const Text('Gagal'),
          content: const Text('Email salah, Mohon periksa kembali!',
              style: TextStyle(fontSize: 15)),
          actions: [
            CupertinoDialogAction(
              onPressed: () {
                Navigator.pop(contexts);
              },
              isDestructiveAction: true,
              child: const Text(
                'OK',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      );
    } else if (password.text != passworddummy) {
      showCupertinoModalPopup(
        context: contexts!,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: const Text('Gagal'),
          content: const Text('Kata Sandi salah, Mohon periksa kembali!',
              style: TextStyle(fontSize: 15)),
          actions: [
            CupertinoDialogAction(
              onPressed: () {
                Navigator.pop(contexts);
              },
              isDestructiveAction: true,
              child: const Text(
                'OK',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      );
    } else {
      showCupertinoModalPopup(
        context: contexts!,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: const Text('Gagal'),
          content: const Text(
              'Terjadi kegagalan pada sistem, mohon periksa koneksi internet anda',
              style: TextStyle(fontSize: 15)),
          actions: [
            CupertinoDialogAction(
              onPressed: () {
                Navigator.pop(contexts);
              },
              isDestructiveAction: true,
              child: const Text(
                'OK',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      );
    }
    // fitur lanjutan adalah memberikan kondisi jika nanti email atau password tidak terdata dalam database
  }
}
