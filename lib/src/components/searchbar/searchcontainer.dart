import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zainozoho/src/data/dataperusahaan/databasekaryawan.dart';

class SearchBar {
  static List<DatabaseKaryawan> datanama = [
    DatabaseKaryawan(nama: "Saputra Budianto"),
    DatabaseKaryawan(nama: "Arum Purwita"),
    DatabaseKaryawan(nama: "Susanti"),
    DatabaseKaryawan(nama: "Upin"),
    DatabaseKaryawan(nama: "Ipin"),
    DatabaseKaryawan(nama: "Mei Mei"),
    DatabaseKaryawan(nama: "Jarjit"),
    DatabaseKaryawan(nama: "Kak Rose"),
    DatabaseKaryawan(nama: "Gujarat"),
    DatabaseKaryawan(nama: "Gopal"),
    DatabaseKaryawan(nama: "Xie Jie"),
    DatabaseKaryawan(nama: "Kim Song Hyun"),
    DatabaseKaryawan(nama: "Kim Na Yo"),
    DatabaseKaryawan(nama: "Buston"),
  ];

  List<DatabaseKaryawan> display_list = List.from(datanama);
  void updateList(String value, Function(Function) setstate) {
    setstate;
    /* 
    setState((){
      display_list = datanama.where((element) => element.nama!.toLowerCase().contains())
    })
    */
  }

  SearchBar({required String label}) {
    Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none),
            hintText: "Cari",
            prefixIcon: SvgPicture.asset('assets/icons/search.svg'),
          ),
        ),
      ],
    );
  }
}
