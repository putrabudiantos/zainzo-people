import 'package:zainozoho/src/controller/getrandom/getrandom.dart';
import 'package:flutter/material.dart';
import '../../components/appbar.dart';
import '../../components/button.dart';
import '../../components/inputtext.dart';

class Payroll extends StatefulWidget {
  const Payroll({super.key});

  @override
  State<Payroll> createState() => _PayrollState();
}

class _PayrollState extends State<Payroll> {
  final appbarcomponents = KAppBar();
  final textfield = KTextField();
  final button = KButton();

  static final dataget = GetRandomData();
  // static var i = dataget.tmp.forEach((element) {
  //   element.toString();
  // });

  final bpjsketenagakerjaancontroller =
      TextEditingController(text: dataget.generateRandomString(6));
  final bpjskesehatancontroller =
      TextEditingController(text: dataget.generateRandomString(6));
  final npwpcontroller =
      TextEditingController(text: dataget.generateRandomInt(16));
  final namabankcontroller = TextEditingController(text: "Bank Central Asia");
  final norekeningcontroller =
      TextEditingController(text: dataget.generateRandomInt(16));
  final namapemilikrekeningcontroller =
      TextEditingController(text: "Saputra Budianto");
  final statusptkpcontroller = TextEditingController(text: "TK/0");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarcomponents.appbar(context: context, titles: 'Info Payroll'),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          textfield.personaldata(
              controllers: bpjsketenagakerjaancontroller,
              label: "BPJS Ketenagakerjaan"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: bpjskesehatancontroller, label: "BPJS Kesehatan"),
          const SizedBox(height: 20),
          textfield.personaldata(controllers: npwpcontroller, label: "NPWP"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: namabankcontroller, label: "Nama Bank"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: norekeningcontroller, label: "No Rekening Bank"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: namapemilikrekeningcontroller,
              label: "Nama Pemilik Bank"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: statusptkpcontroller, label: "Status PTKP"),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child:
            button.kOutlineButton(titles: "Ajukan Perubahan Data", func: () {}),
      ),
    );
  }
}
