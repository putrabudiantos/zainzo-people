import 'package:flutter/material.dart';
import '../../components/appbar.dart';
import '../../components/button.dart';
import '../../components/inputtext.dart';
import 'package:zainozoho/src/controller/logiceliminate/logiceliminate.dart';

class UbahKataSandi extends StatefulWidget {
  const UbahKataSandi({super.key});

  @override
  State<UbahKataSandi> createState() => _UbahKataSandiState();
}

class _UbahKataSandiState extends State<UbahKataSandi> {
  final logic = LogicEliminate();
  final appbarcomponents = KAppBar();
  final textfield = KTextField();
  final button = KButton();
  bool tampilsandipasswordsekarang = true;
  bool tampilsandipasswordbaru1 = true;
  bool tampilsandipasswordbaru2 = true;
  final passwordsekarang = TextEditingController();
  final passwordbaru1 = TextEditingController();
  final passwordbaru2 = TextEditingController();

  bool isPasswordEightCharacters = false;
  bool hasPasswordOneNumber = false;
  bool hasLowerUpper = false;

  onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');
    final upperLowerRegex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z]).{8,}$');

    setState(() {
      isPasswordEightCharacters = false;
      if (password.length >= 8) isPasswordEightCharacters = true;

      hasPasswordOneNumber = false;
      if (numericRegex.hasMatch(password)) hasPasswordOneNumber = true;
    });

    if (upperLowerRegex.hasMatch(password)) hasLowerUpper = true;
  }

  @override
  void initState() {
    super.initState();
    passwordbaru1.addListener(() {});
  }

  @override
  void dispose() {
    passwordbaru1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarcomponents.appbar(context: context, titles: 'Info Payroll'),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          // Texfield untuk passsword sekarang
          textfield.passwordinput(
              obecuretext: tampilsandipasswordsekarang,
              controller: passwordsekarang,
              label: "Password Sekarang",
              setstate: () {
                setState(() {
                  tampilsandipasswordsekarang = !tampilsandipasswordsekarang;
                });
              }),

          const SizedBox(height: 20),

          // TextField untuk password baru 1
          textfield.passwordinput(
              obecuretext: tampilsandipasswordbaru1,
              controller: passwordbaru1,
              label: "Pasword Baru",
              onchanged: (text) => onPasswordChanged(text),
              setstate: () {
                setState(() {
                  tampilsandipasswordbaru1 = !tampilsandipasswordbaru1;
                });
              }),

          const SizedBox(height: 10),
          //eliminasi
          // logic.eliminate(context: context, text: passwordbaru1.text),
          Row(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: isPasswordEightCharacters
                        ? Colors.green
                        : Colors.transparent,
                    border: isPasswordEightCharacters
                        ? Border.all(color: Colors.transparent)
                        : Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(50)),
                child: const Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text("Panjang minimal 8 karakter")
            ],
          ),
          const SizedBox(height: 10),

          Row(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: hasLowerUpper ? Colors.green : Colors.transparent,
                    border: hasLowerUpper
                        ? Border.all(color: Colors.transparent)
                        : Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(50)),
                child: const Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text("Huruf kecil dan besar")
            ],
          ),

          const SizedBox(height: 10),
          Row(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: hasPasswordOneNumber
                        ? Colors.green
                        : Colors.transparent,
                    border: hasPasswordOneNumber
                        ? Border.all(color: Colors.transparent)
                        : Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(50)),
                child: const Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text("Minimal terdapat 1 angka")
            ],
          ),

          const SizedBox(height: 10),
          //Textfield untuk password baru 2
          textfield.passwordinput(
              obecuretext: tampilsandipasswordbaru2,
              controller: passwordbaru2,
              label: "Password Baru",
              setstate: () {
                setState(() {
                  tampilsandipasswordbaru2 = !tampilsandipasswordbaru2;
                });
              })
        ],
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10),
          child: button.kElevetedButton("Simpan Perubahan", () {})),
    );
  }
}
