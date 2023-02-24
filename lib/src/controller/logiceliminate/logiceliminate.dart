import 'package:flutter/material.dart';

class LogicEliminate {
  //   bool _isPasswordEightCharacters = false;
  //   bool _hasPasswordOneNumber = false;

  //   onPasswordChanged(String password, Function() fn) {
  //   final numericRegex = RegExp(r'[0-9]');

  //   setState(() {
  //     _isPasswordEightCharacters = false;
  //     if(password.length >= 8)
  //       _isPasswordEightCharacters = true;

  //     _hasPasswordOneNumber = false;
  //     if(numericRegex.hasMatch(password))
  //       _hasPasswordOneNumber = true;
  //   });
  // }

  bool validateStructurewithsymbol(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  bool validateStructureuplow(String value) {
    String pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  Container eliminate({required BuildContext context, required String text}) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 115,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                  child: text.length != 8
                      ? const Icon(
                          Icons.close,
                          color: Colors.red,
                        )
                      : const Icon(Icons.done, color: Colors.green)),
              Container(
                  child: text.length != 8
                      ? const Text(
                          "Panjang minimal 8 karakter",
                          style: TextStyle(color: Colors.red),
                        )
                      : const Text("Panjang minimal 8 karakter",
                          style: TextStyle(color: Colors.green))),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Container(
                child: validateStructureuplow(text) == true
                    ? const Icon(Icons.done, color: Colors.green)
                    : const Icon(Icons.close, color: Colors.red),
              ),
              Container(
                child: validateStructureuplow(text) == true
                    ? const Text(
                        "Huruf Kecil dan Besar",
                        style: TextStyle(color: Colors.green),
                      )
                    : const Text(
                        "Huruf Kecil dan Besar",
                        style: TextStyle(color: Colors.red),
                      ),
              )
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Container(
                child: text.contains(RegExp(r'[0-9]'))
                    ? const Icon(Icons.done, color: Colors.green)
                    : const Icon(Icons.close, color: Colors.red),
              ),
              Container(
                child: text.contains(RegExp(r'[0-9]'))
                    ? const Text(
                        "Minimal 1 Angka",
                        style: TextStyle(color: Colors.green),
                      )
                    : const Text(
                        "Minimal 1 Angka",
                        style: TextStyle(color: Colors.red),
                      ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
