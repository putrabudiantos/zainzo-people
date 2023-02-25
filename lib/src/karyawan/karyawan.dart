import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zainozoho/src/components/appbar.dart';
import 'package:zainozoho/src/data/dataperusahaan/databasekaryawan.dart';

class Karyawan extends StatefulWidget {
  const Karyawan({super.key});

  @override
  State<Karyawan> createState() => _KaryawanState();
}

class _KaryawanState extends State<Karyawan> {
  int jumlahkaryawan = 0;
  final searchcontroller = TextEditingController();
  final appbar = KAppBar();

  void updateList(String value) {}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.only(left: 18, top: 20, right: 18),
        children: [
          //Jumlah karyawan
          Text(
            "Karyawan $jumlahkaryawan",
            style: const TextStyle(
                fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          //Search Bar
          TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(17),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.black12)),
              hintText: "Cari",
              prefixIcon: SvgPicture.asset(
                'assets/icons/search.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
