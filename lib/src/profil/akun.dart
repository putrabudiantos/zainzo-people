import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zainozoho/src/profil/ubahkatasandi/ubahkatasandi.dart';
import '../data/datauser/dataperson.dart';
import '../components/textstyle/title.dart';
import 'package:zainozoho/src/profil/profileakun/profileakun.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zainozoho/src/profil/personal/personal.dart';
import 'package:zainozoho/src/profil/pekerjaan/pekerjaan.dart';
import 'package:zainozoho/src/profil/payroll/payroll.dart';
import 'package:zainozoho/src/profil/pengingat/pengingatcico.dart';
import 'package:zainozoho/src/login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  final shareddata = const LoginPage();
  final styledata = KTextStyle();
  SharedPreferences? logindata;
  String? username;

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata!.getString('username')!;
    });
  }

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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InfoPekerjaan(),
                  ),
                );
              },
              minLeadingWidth: 12,
              leading: SvgPicture.asset('assets/icons/icon_pekerjaan.svg'),
              title: Text('Pekerjaan', style: styledata.smaller),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
            ),

            //Payroll
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Payroll(),
                  ),
                );
              },
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UbahKataSandi(),
                  ),
                );
              },
              minLeadingWidth: 12,
              leading: SvgPicture.asset('assets/icons/icon_ubahSandi.svg'),
              title: Text('Ubah Kata Sandi', style: styledata.smaller),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 15),
            ),

            //Pengingat ClockIn dan Clockout
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PengingatCiCo()));
              },
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
              onTap: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext context) => CupertinoAlertDialog(
                    title: const Text('Yakin ingin keluar?'),
                    content: const Text('Anda perlu login ulang untuk kembali',
                        style: TextStyle(fontSize: 15)),
                    actions: [
                      CupertinoDialogAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        isDestructiveAction: true,
                        child: const Text(
                          'Batal',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      CupertinoDialogAction(
                        onPressed: () {
                          logindata!.setBool('login', true);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        isDestructiveAction: true,
                        child: const Text(
                          'Keluar',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
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
