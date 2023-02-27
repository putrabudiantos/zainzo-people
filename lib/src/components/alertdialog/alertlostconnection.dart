import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class KAlertDialog {
  dialogError({required BuildContext context}) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('Koneksi Gagal'),
        content: const Text(
            'Gagal terhubung ke internet, mohon periksa kembali koneksi anda!'),
        actions: [
          CupertinoDialogAction(
            child: const Text(
              'OK',
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
