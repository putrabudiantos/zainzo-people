import 'package:flutter/material.dart';

class KAppBar {
  AppBar appbar(
      {String? titles,
      List<Widget>? actions,
      Widget? leadings,
      required BuildContext? context}) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context!);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
          size: 19,
        ),
      ),
      title: Text(
        titles!,
        style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Inter',
            fontSize: 17,
            fontWeight: FontWeight.bold),
      ),
      actions: actions,
      backgroundColor: Colors.white,
      elevation: 2,
    );
  }
}
