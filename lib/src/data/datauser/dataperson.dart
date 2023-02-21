import 'package:flutter/material.dart';

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

  DataUser({this.namapanggilan, this.posisipekerjaan, this.imageurl});

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
}
