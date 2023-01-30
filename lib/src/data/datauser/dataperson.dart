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

  DataUser(
      {this.namapanggilan,
      this.posisipekerjaan,
      this.imageurl,
      this.namaperusahaan});

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

  List<Map<String, String>> logabsen = [
    {
      'nama': 'Arum',
      'checkin':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}",
      'checkout':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}"
    },
    {
      'nama': 'Arum',
      'checkin':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}",
      'checkout':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}"
    },
    {
      'nama': 'Arum',
      'checkin':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}",
      'checkout':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}"
    },
    {
      'nama': 'Arum',
      'checkin':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}",
      'checkout':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}"
    },
    {
      'nama': 'Arum',
      'checkin':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}",
      'checkout':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}"
    },
    {
      'nama': 'Arum',
      'checkin':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}",
      'checkout':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}"
    },
    {
      'nama': 'Arum',
      'checkin':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}",
      'checkout':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}"
    },
    {
      'nama': 'Arum',
      'checkin':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}",
      'checkout':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}"
    },
    {
      'nama': 'Arum',
      'checkin':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}",
      'checkout':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}"
    },
    {
      'nama': 'Arum',
      'checkin':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}",
      'checkout':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}"
    },
    {
      'nama': 'Arum',
      'checkin':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}",
      'checkout':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}"
    },
    {
      'nama': 'Arum',
      'checkin':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}",
      'checkout':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}"
    },
    {
      'nama': 'Arum',
      'checkin':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}",
      'checkout':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}"
    },
    {
      'nama': 'Arum',
      'checkin':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}",
      'checkout':
          "${DateFormat.jm().format(DateTime.now())}, ${DateFormat.yMMMMd().format(DateTime.now())}"
    },
  ];
}
