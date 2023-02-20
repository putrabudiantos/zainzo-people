import 'package:flutter/material.dart';
import 'package:zainozoho/src/theme/color.dart'; //import kelas color

class KButton {
  //TextButton
  TextButton kTextButton(String judul, Function() onpressing) {
    return TextButton(
      onPressed: onpressing,
      child: Text(
        judul,
        style: TextStyle(color: KColorTheme.warnaDasar),
      ),
    );
  }

  //ElevetedButton
  ElevatedButton kElevetedButton(String judul, Function() onpressing) {
    return ElevatedButton(
      onPressed: onpressing,
      child: Text(
        judul,
        style: TextStyle(color: KColorTheme.warnaDasar),
      ),
    );
  }
}
