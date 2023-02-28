import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../home/home.dart';
import '../theme/color.dart'; //import kelas color
import 'package:flutter_svg/flutter_svg.dart'; //import kelas svg untuk icon navigasi bar
import 'package:zainozoho/src/profil/akun.dart'; //import kelas tab akun
import 'package:zainozoho/src/karyawan/karyawan.dart'; //import kelas untuk tab karyawan
import 'package:zainozoho/src/notifikasi/tabnotifikasi.dart';

class NavMainPage extends StatefulWidget {
  const NavMainPage({super.key});

  @override
  State<NavMainPage> createState() => _NavMainPageState();
}

class _NavMainPageState extends State<NavMainPage> {
  //fungsi dan variable untuk checking internet
  late StreamSubscription subscription;
  var isDeviceConnected = false;
  bool isAlert = false;

  @override
  void initState() {
    getConnectivity();
    super.initState();
  }

  getConnectivity() {
    subscription = Connectivity().onConnectivityChanged.listen(
      (ConnectivityResult result) async {
        isDeviceConnected = await InternetConnectionChecker().hasConnection;
        if (!isDeviceConnected && isAlert == false) {
          // alert.dialogError(context: context);
          dialogError();
          setState(
            () {
              isAlert = true;
            },
          );
        }
      },
    );
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  dialogError() {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('Koneksi Gagal'),
        content: const Text(
            'Gagal terhubung ke internet, mohon periksa kembali koneksi anda!'),
        actions: [
          CupertinoDialogAction(
            child: const Text(
              'OK',
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: () async {
              Navigator.pop(context);
              setState(
                () async {
                  isAlert = false;
                  isDeviceConnected =
                      await InternetConnectionChecker().hasConnection;
                  if (!isDeviceConnected) {
                    dialogError();
                    setState(() {
                      isAlert = true;
                    });
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }

  //inisialisasi index navigasi bar
  int _selectedIndex = 0;

  //inisialisasi boolean untuk aktif nonaktif icon navigasi bar
  bool aktif = false;
  // final alert = KAlertDialog();

  //inisialisasi list untuk peletakan fungsi navigasi bar
  static const List<Widget> _widgetnav = <Widget>[
    //fungsi window Home
    Home(),

    //fungsi window jadwal
    Karyawan(),

    TabNotifikasi(),

    //fungsiw window akun
    Akun(),
  ];

  //inisialisasi fungsi saat ditap pada navigasi bar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body nya adalah isi dari sebuah window fungsi yang sudah diset pada _widgetnav
      body: Center(
        child: _widgetnav.elementAt(_selectedIndex),
      ),

      // inisialisasi Navigatorbar
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/icon_home_nonaktif.svg'),
              activeIcon: SvgPicture.asset('assets/icons/icon_home_aktif.svg'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/contact.svg'),
              activeIcon: SvgPicture.asset('assets/icons/karyawan-active.svg'),
              label: 'Karyawan',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/notifications.svg'),
              activeIcon:
                  SvgPicture.asset('assets/icons/notifications-active.svg'),
              label: 'Notifikasi',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/icon_akun_nonaktif.svg'),
              activeIcon: SvgPicture.asset('assets/icons/icon_akun_aktif.svg'),
              label: 'Akun',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: KColorTheme.warnaUtama,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
