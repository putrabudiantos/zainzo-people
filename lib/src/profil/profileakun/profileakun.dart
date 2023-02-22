import 'package:flutter/material.dart';
import 'package:zainozoho/src/data/datauser/dataperson.dart';
import 'package:zainozoho/src/components/textstyle/title.dart';

//Kelas untuk inisialisasi info profile paling atas pada tab akun
class ProfilePerson extends StatelessWidget {
  const ProfilePerson({
    super.key,
    required this.data,
    required this.styledata,
    required Function()? func,
  });

  final DataUser data;
  final KTextStyle styledata;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(10),
      title: Text(
        '${data.data()["namapanggilan"]}',
        style: styledata.judul,
      ),
      subtitle: Text(
          '${data.data()["posisipekerjaan"]}\n${data.data()["namaperusahaan"]}'),
      trailing: CircleAvatar(
        radius: 30,
        backgroundImage: data.data()['urlimage'],
      ),
    );
  }
}
