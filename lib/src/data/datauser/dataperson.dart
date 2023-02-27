import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//inisialisasi kelas untuk data sementara dengan mapping list
class DataUser {
  String? namalengkap;
  String? namapanggilan;
  String? email;
  String? nomortelp;
  String? tempatlahir;
  String? tanggallahir;
  String? jeniskelamin;
  String? statuspernikahan;
  String? golongandarah;
  String? alamat;
  String? agama;
  String? urlimage;
  String? posisipekerjaan;
  String? namaperusahaan;
  String? employeid;
  String? statuskaryawan;
  String? tanggalmasuk;
  String? tanggalkeluar;
  String? branch;
  String? departement;
  String? grade;
  String? kelas;
  String? schedule;
  String? approvalline;
  String? bpjsketenagakerjaan;
  String? bpjskesehatan;
  String? npwp;
  String? namabank;
  String? rekeningbank;
  String? namapemilikrekening;
  String? statusptkp;
  String? imageurl;
  String? alasan;

  String? hari;
  String? bulan;
  String? menit;
  String? jam;
  String? waktu;

  bool titikKoma = true;
  DateTime date = DateTime.now();
  Timer? timer;

  // fungsi konversi hari
  convertHari() {
    if (date.weekday == 1) hari = "Sen";
    if (date.weekday == 2) hari = "Sel";
    if (date.weekday == 3) hari = "Rab";
    if (date.weekday == 4) hari = "Kam";
    if (date.weekday == 5) hari = "Jum";
    if (date.weekday == 6) hari = "Sab";
    if (date.weekday == 7) hari = "Min";
    return hari;
  }

  // fungsi konversi bulan
  convertBulan() {
    if (date.month == 1) bulan = "Jan";
    if (date.month == 2) bulan = "Feb";
    if (date.month == 3) bulan = "Mar";
    if (date.month == 4) bulan = "Apr";
    if (date.month == 5) bulan = "Mei";
    if (date.month == 6) bulan = "Jun";
    if (date.month == 7) bulan = "Jul";
    if (date.month == 3) bulan = "Agu";
    if (date.month == 4) bulan = "Sep";
    if (date.month == 5) bulan = "Okt";
    if (date.month == 6) bulan = "Nov";
    if (date.month == 7) bulan = "Des";
    return bulan;
  }

  //konstruktor named untuk mengambil datauser
  DataUser(
      {this.namapanggilan,
      this.posisipekerjaan,
      this.imageurl,
      this.namaperusahaan});

  //mapping data user
  Map data() {
    return {
      'id': employeid,
      'namalengkap': namalengkap,
      'namapanggilan': namapanggilan,
      'email': email,
      'nomortelp': nomortelp,
      'tempatlahir': tempatlahir,
      'jeniskelamin': jeniskelamin,
      'statuskaryawan': statuskaryawan,
      'agama': agama,
      'urlimage': NetworkImage(imageurl!),
      'posisipekerjaan': posisipekerjaan,
      'namaperusahaan': namaperusahaan,
      'npwp': npwp,
      'bpjsketenagakerjaan': bpjsketenagakerjaan,
      'bpjskesehatan': bpjskesehatan,
      'rekeningbank': rekeningbank,
      'namapemilikrekening': namapemilikrekening,
      'statuspktp': statusptkp,
      'departemen': departement,
      'branch': branch,
      'kelas': kelas
    };
  }

  void setalasan(String alasan) {
    this.alasan = alasan;
  }

  String getalasan() {
    return alasan!;
  }

  String? checkindate =
      "$DateFormat.jm().format(DateTime.now()), $DateFormat.yMMMMd().format(DateTime.now())";

  //list untuk mendeklarasikan data log absen sementara
  //untuk lanjutan bisa diambil melalui database
  List<Map<String, String>> logabsen = [
    {
      "hari": DateFormat('EEEE').format(DateTime.now()),
      "tanggal": DateTime.now().day.toString(),
      "clockin": DateFormat.Hm().format(DateTime.now()),
      "clockout": DateFormat.Hm().format(DateTime.now())
    },
    {
      "hari": DateFormat('EEEE').format(DateTime.now()),
      "tanggal": DateTime.now().day.toString(),
      "clockin": DateFormat.Hm().format(DateTime.now()),
      "clockout": DateFormat.Hm().format(DateTime.now())
    },
    {
      "hari": DateFormat('EEEE').format(DateTime.now()),
      "tanggal": DateTime.now().day.toString(),
      "clockin": DateFormat.Hm().format(DateTime.now()),
      "clockout": DateFormat.Hm().format(DateTime.now())
    },
    {
      "hari": DateFormat('EEEE').format(DateTime.now()),
      "tanggal": DateTime.now().day.toString(),
      "clockin": DateFormat.Hm().format(DateTime.now()),
      "clockout": DateFormat.Hm().format(DateTime.now())
    },
    {
      "hari": DateFormat('EEEE').format(DateTime.now()),
      "tanggal": DateTime.now().day.toString(),
      "clockin": DateFormat.Hm().format(DateTime.now()),
      "clockout": DateFormat.Hm().format(DateTime.now())
    },
    {
      "hari": DateFormat('EEEE').format(DateTime.now()),
      "tanggal": DateTime.now().day.toString(),
      "clockin": DateFormat.Hm().format(DateTime.now()),
      "clockout": DateFormat.Hm().format(DateTime.now())
    },
    {
      "hari": DateFormat('EEEE').format(DateTime.now()),
      "tanggal": DateTime.now().day.toString(),
      "clockin": DateFormat.Hm().format(DateTime.now()),
      "clockout": DateFormat.Hm().format(DateTime.now())
    },
    {
      "hari": DateFormat('EEEE').format(DateTime.now()),
      "tanggal": DateTime.now().day.toString(),
      "clockin": DateFormat.Hm().format(DateTime.now()),
      "clockout": DateFormat.Hm().format(DateTime.now())
    }
  ];
}
