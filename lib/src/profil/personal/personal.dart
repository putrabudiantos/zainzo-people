import 'package:flutter/material.dart';
import 'package:zainozoho/src/components/appbar.dart';
import 'package:zainozoho/src/components/inputtext.dart';
import 'package:zainozoho/src/components/button.dart';

class PersonalEdit extends StatefulWidget {
  const PersonalEdit({super.key});

  @override
  State<PersonalEdit> createState() => _PersonalEditState();
}

class _PersonalEditState extends State<PersonalEdit> {
  //inisialisai objek controller dari kelas TextEditingController
  final namalengkapcontroller = TextEditingController(text: "Saputra Budianto");
  final namapanggilancontroller = TextEditingController(text: "Putra");
  final emailcontroller =
      TextEditingController(text: "localhosting127.0.0.1@gmail.com");
  final nomorteleponcontroller = TextEditingController(text: "081237131587");
  final tempatlahircontroller = TextEditingController(text: "Surabaya");
  final tanggallahircontroller = TextEditingController(text: "23/11/1999");
  final jeniskelamincontroller = TextEditingController(text: "Laki-laki");
  final statuspernikahancontroller = TextEditingController(text: "Lajang");
  final golongandarahcontroller = TextEditingController(text: 'AB');
  final agamacontroller = TextEditingController(text: "Islam");

  //inisialisasi objek dari kelas KAppBar, KTexField, KButton
  final appbarcomponents = KAppBar();
  final textfield = KTextField();
  final button = KButton();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          appbarcomponents.appbar(context: context, titles: 'Info Personal'),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          textfield.personaldata(
              controllers: namalengkapcontroller, label: "Nama Lengkap"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: namapanggilancontroller, label: "Nama Panggilan"),
          const SizedBox(height: 20),
          textfield.personaldata(controllers: emailcontroller, label: "Email"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: nomorteleponcontroller, label: "Nomor Telpon"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: tempatlahircontroller, label: "Tempat Lahir"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: tanggallahircontroller, label: "Tanggal Lahir"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: jeniskelamincontroller, label: "Jenis Kelamin"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: statuspernikahancontroller, label: "Status"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: golongandarahcontroller, label: "Golongan Darah"),
          const SizedBox(height: 20),
          textfield.personaldata(controllers: agamacontroller, label: "Agama"),
          const SizedBox(height: 20),
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
