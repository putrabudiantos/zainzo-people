import 'package:flutter/material.dart';

import '../../components/appbar.dart';
import '../../components/button.dart';
import '../../components/inputtext.dart';

class InfoPekerjaan extends StatefulWidget {
  const InfoPekerjaan({super.key});

  @override
  State<InfoPekerjaan> createState() => _InfoPekerjaanState();
}

class _InfoPekerjaanState extends State<InfoPekerjaan> {
  //inisialisasi text controller untuk info pekerjaan
  final employeeidcontroller = TextEditingController(text: "ID2173");
  final statuskaryawancontroller = TextEditingController(text: "Tetap");
  final tanggalmasukcontroller = TextEditingController(text: "12/12/2023");
  final tanggalkeluarcontroller = TextEditingController(text: "12/12/2023");
  final branchcontroller = TextEditingController(text: "-");
  final departementcontroller = TextEditingController(text: "-");
  final posisipekerjaancontroller =
      TextEditingController(text: "Mobile Developer");
  final levelpekerjaancontroller = TextEditingController(text: "Staff");
  final gradecontroller = TextEditingController(text: '-');
  final schedulecontroller = TextEditingController(text: "-");
  final kelascontroller = TextEditingController(text: "-");
  final approvelinecontroller = TextEditingController(text: "Indra Kusuma");

  //inisialisasi objek untuk kelas KAppBar, KTextField, dan KButton
  final appbarcomponents = KAppBar();
  final textfield = KTextField();
  final button = KButton();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          appbarcomponents.appbar(context: context, titles: 'Info Pekerjaan'),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          textfield.personaldata(
              controllers: employeeidcontroller, label: "Employee ID"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: statuskaryawancontroller, label: "Status Karyawan"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: tanggalmasukcontroller, label: "Tanggal Masuk"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: tanggalkeluarcontroller, label: "Tanggal Keluar"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: branchcontroller, label: "Branch"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: departementcontroller, label: "Departement"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: posisipekerjaancontroller,
              label: "Posisi Pekerjaan"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: levelpekerjaancontroller, label: "Level Pekerjaan"),
          const SizedBox(height: 20),
          textfield.personaldata(controllers: gradecontroller, label: "Grade"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: schedulecontroller, label: "Class"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: gradecontroller, label: "Schedule"),
          const SizedBox(height: 20),
          textfield.personaldata(
              controllers: approvelinecontroller, label: "Approval Line"),
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
