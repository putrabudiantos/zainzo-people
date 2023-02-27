import 'package:flutter/material.dart';
import 'package:zainozoho/src/models/mysqlconnection.dart';

class KListTileKaryawan extends StatefulWidget {
  const KListTileKaryawan({super.key});

  @override
  State<KListTileKaryawan> createState() => _KListTileKaryawanState();
}

class _KListTileKaryawanState extends State<KListTileKaryawan> {
  var db = MySql();
  var nama = "";

  void getMahasiswa() {
    db.getConnection().then((conn) {
      String sql = "select nama from mahasiswa where kelas = '3b1';";
      conn.query(sql).then((result) {
        setState(() {
          for (var row in result) {
            setState(() {
              nama = row[0];
            });
          }
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(nama),
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(''),
      ),
    );
  }
}
