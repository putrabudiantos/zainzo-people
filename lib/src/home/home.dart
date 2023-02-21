import 'package:flutter/material.dart';
import '../data/datauser/dataperson.dart';
import '../components/textstyle/title.dart';
import '../components/containerjam/containerjam.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //inisialisasi objek dari folder data/datauser dengan nama kelas DataUser
  var data = DataUser(
      namapanggilan: 'Saputra Budianto',
      posisipekerjaan: 'Mobile Developer',
      imageurl:
          'https://media.licdn.com/dms/image/D4D03AQFm99I7ryL32g/profile-displayphoto-shrink_800_800/0/1675770329460?e=2147483647&v=beta&t=UNyN1z4W5ardwjKP0SRZlpEUM27aYst7ANbkWqkYQGM');

  final styledata = KTextStyle();

  @override
  Widget build(BuildContext context) {
    return
        //inisialisasi listview untuk widget image, clock dan lain lain
        SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          //inisialisasi widget image untuk logo perusahaan itu sendiri
          //untuk image nanti diatur ulang sesuai dari database
          //ini hanya untuk preview saja
          Image.asset(
            'assets/images/gojeklogo.png',
            width: 460,
            height: 30,
            alignment: Alignment.centerLeft,
          ),

          //inisialisasi profil dan foto profile
          ListTile(
            contentPadding: const EdgeInsets.all(10),
            title: Text(
              '${data.data()["namapanggilan"]}',
              style: styledata.judul,
            ),
            subtitle: Text('${data.data()["posisipekerjaan"]}'),
            trailing: CircleAvatar(
              radius: 30,
              backgroundImage: data.data()['urlimage'],
            ),
          ),
          const KWidget()
        ],
      ),
    );
  }
}
