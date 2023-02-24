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

  // void Texts() {
  //   print("${passwordbaru1.text}");
  // }

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
              setstate: () {
                setState(() {
                  tampilsandipasswordbaru1 = !tampilsandipasswordbaru1;
                });
              }),

          //eliminasi
          logic.eliminate(context: context, text: passwordbaru1.text),
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
