import 'package:flutter/material.dart';
import '../data/datauser/dataperson.dart';
import '../components/textstyle/title.dart';
import 'package:zainozoho/src/profil/profileakun/profileakun.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zainozoho/src/profil/personal/personal.dart';

class Akun extends StatefulWidget {
  const Akun({super.key});

  @override
  State<Akun> createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  //inisialisasi objek dan parameter daru kelas user
  var data = DataUser(
      namapanggilan: 'Saputra Budianto',
      posisipekerjaan: 'Mobile Developer',
      namaperusahaan: 'PT. Gojek Indonesia',
      imageurl:
          'https://media.licdn.com/dms/image/D4D03AQFm99I7ryL32g/profile-displayphoto-shrink_800_800/0/1675770329460?e=2147483647&v=beta&t=UNyN1z4W5ardwjKP0SRZlpEUM27aYst7ANbkWqkYQGM');

  //inisialisasi objek untuk style teks
  final styledata = KTextStyle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            //Profile
            ProfilePerson(
              data: data,
              styledata: styledata,
              func: () {},
            ),

            const SizedBox(height: 15),

            //Teks Profil Saya
            Text('   Info Saya', style: styledata.midstyletext),

            //Personal
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PersonalEdit(),
                  ),
                );
              },
              minLeadingWidth: 12,
              leading: SvgPicture.asset('assets/icons/icon_personal.svg'),
              title: Text('Personal', style: styledata.smaller),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
            ),

            //Pekerjaan
            ListTile(
              onTap: () {},
              minLeadingWidth: 12,
              leading: SvgPicture.asset('assets/icons/icon_pekerjaan.svg'),
              title: Text('Pekerjaan', style: styledata.smaller),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
            ),

            //Payroll
            ListTile(
              onTap: () {},
              minLeadingWidth: 12,
              leading: SvgPicture.asset('assets/icons/icon_payroll.svg'),
              title: Text('Payroll', style: styledata.smaller),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
            ),

            //Peringatan
            ListTile(
              onTap: () {},
              minLeadingWidth: 12,
              leading: SvgPicture.asset('assets/icons/icon_peringatan.svg'),
              title: Text('Peringatan', style: styledata.smaller),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
            ),

            const SizedBox(height: 15),

            //Teks Pengaturan
            Text('   Pengaturan', style: styledata.midstyletext),

            //Ubah Kata Sandi
            ListTile(
              onTap: () {},
              minLeadingWidth: 12,
              leading: SvgPicture.asset('assets/icons/icon_ubahSandi.svg'),
              title: Text('Ubah Kata Sandi', style: styledata.smaller),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
            ),

            //Pengingat ClockIn dan Clockout
            ListTile(
              onTap: () {},
              minLeadingWidth: 12,
              leading:
                  SvgPicture.asset('assets/icons/icon_pengingatClockInOut.svg'),
              title: Text('Pengingat Clock In/Out', style: styledata.smaller),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
            ),

            const SizedBox(height: 15),

            //Teks Bantuan
            Text('   Bantuan', style: styledata.midstyletext),

            //Pusat Bantuan
            ListTile(
              onTap: () {},
              minLeadingWidth: 12,
              leading: SvgPicture.asset('assets/icons/icon_pusatBantuan.svg'),
              title: Text('Pusat Bantuan', style: styledata.smaller),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
            ),

            //FAQ
            ListTile(
              onTap: () {},
              minLeadingWidth: 12,
              leading: SvgPicture.asset('assets/icons/icon_FAQ.svg'),
              title: Text('FAQ', style: styledata.smaller),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
            ),

            //Chat Support
            ListTile(
              onTap: () {},
              minLeadingWidth: 12,
              leading: SvgPicture.asset('assets/icons/icon_chatSupport.svg'),
              title: Text('Chat Support', style: styledata.smaller),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
            ),

            const SizedBox(height: 15),

            //Teks Lainnya
            Text('   Lainnya', style: styledata.midstyletext),

            //Berikan Ulasan
            ListTile(
              onTap: () {},
              minLeadingWidth: 12,
              leading: SvgPicture.asset('assets/icons/icon_berikanUlasan.svg'),
              title: Text('Berikan Ulasan', style: styledata.smaller),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
            ),

            //Keluar
            ListTile(
              onTap: () {},
              minLeadingWidth: 12,
              leading: SvgPicture.asset('assets/icons/icon_keluar.svg'),
              title: Text('Keluar', style: styledata.smaller),
            ),
          ],
        ),
      ),
    );
  }
}
